import Foundation

/// Represents all possible networking-related errors
/// Centralizing errors makes debugging and handling failures easier
public enum NetworkError: Error {
    
    /// The constructed URL was invalid
    case invalidURL
    
    /// Server returned a non-success HTTP status code
    /// - Parameter Int: HTTP status code
    case server(Int)
    
    /// Failed to decode the response into the expected model
    /// - Parameter Error: Underlying decoding error
    case decoding(Error)
    
    /// Any unknown or unexpected error
    case unknown
}
