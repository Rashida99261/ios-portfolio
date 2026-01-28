import Foundation

/// Represents an API endpoint with all required information to make a network request
public protocol Endpoint {
    /// Base URL of the API (e.g., https://api.example.com)
    var baseURL: URL { get }
    
    /// Path to the specific endpoint (e.g., "/users")
    var path: String { get }
    
    /// HTTP method for the request (GET, POST, etc.)
    var method: HTTPMethod { get }
    
    /// Optional headers to include in the request (e.g., ["Authorization": "Bearer token"])
    var headers: [String: String]? { get }
}

/// Provide a default implementation for headers so conforming types
/// don’t need to implement it if no custom headers are required
public extension Endpoint {
    var headers: [String: String]? { nil }
}
