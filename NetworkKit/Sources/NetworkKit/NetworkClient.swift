
import Combine
import Foundation

/// A protocol that defines a generic network client
/// Any concrete implementation (URLSession, mock client, etc.)
/// must provide a way to perform a request and return a Combine publisher

public protocol NetworkClient {
    
    /// Executes a network request for the given endpoint
    /// - Parameter endpoint: An object conforming to `Endpoint` that defines request details
    /// - Returns: A publisher that emits a decoded object of type `T` or a `NetworkError`

    func request<T: Decodable>(_ endpoint: Endpoint) -> AnyPublisher<T, NetworkError>
}
