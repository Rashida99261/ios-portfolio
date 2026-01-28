import Combine
import Foundation

/// Concrete implementation of `NetworkClient` using URLSession and Combine
/// Responsible for executing network requests and decoding responses
public final class URLSessionNetworkClient: NetworkClient {
    
    /// The URLSession instance used to perform network requests.
    /// Defaults to `URLSession.shared`, but can be injected for testing
    private let session: URLSession
    
    /// Initialize with a URLSession (default is shared)
    /// - Parameter session: URLSession instance for making network calls
    public init(session: URLSession = .shared) {
        self.session = session
    }
    
    /// Performs a network request for the given endpoint and returns a Combine publisher
    /// - Parameter endpoint: The API endpoint conforming to `Endpoint`
    /// - Returns: A publisher that emits the decoded response of type `T` or a `NetworkError`
    public func request<T: Decodable>(_ endpoint: Endpoint) -> AnyPublisher<T, NetworkError> {
        
        // Construct the full URL from baseURL and path
        guard let url = URL(string: endpoint.path, relativeTo: endpoint.baseURL) else {
            // Return a failed publisher if URL is invalid
            return Fail(error: NetworkError.invalidURL).eraseToAnyPublisher()
        }
        
        // Create a URLRequest with method and headers
        var request = URLRequest(url: url)
        request.httpMethod = endpoint.method.rawValue
        if let headers = endpoint.headers {
            headers.forEach { request.addValue($1, forHTTPHeaderField: $0) }
        }
        
        // Use URLSession’s dataTaskPublisher to perform the request asynchronously
        return session.dataTaskPublisher(for: request)
            // Check for HTTP response codes and throw error if not 2xx
            .tryMap { result -> Data in
                if let httpResponse = result.response as? HTTPURLResponse,
                   !(200...299).contains(httpResponse.statusCode) {
                    throw NetworkError.server(httpResponse.statusCode)
                }
                return result.data
            }
            // Decode the JSON data into the expected type
            .decode(type: T.self, decoder: JSONDecoder())
            // Map any thrown errors to our NetworkError enum
            .mapError { error -> NetworkError in
                if let netError = error as? NetworkError {
                    return netError
                } else if let decodingError = error as? DecodingError {
                    return NetworkError.decoding(decodingError)
                } else {
                    return NetworkError.unknown
                }
            }
            // Convert to AnyPublisher to hide implementation details
            .eraseToAnyPublisher()
    }
}

