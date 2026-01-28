import Foundation

/// Represents supported HTTP methods
/// Raw values are used directly in URLRequest

public enum HTTPMethod: String {
    case get = "GET"
    case post = "POST"
    case delete = "DELETE"
    case put = "PUT"
}
