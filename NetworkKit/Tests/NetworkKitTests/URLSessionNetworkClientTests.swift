import XCTest
import Combine
@testable import NetworkKit

final class URLSessionNetworkClientTests: XCTestCase {
    
    var client: URLSessionNetworkClient!
    var cancellables: Set<AnyCancellable>!
    
    override func setUp() {
        super.setUp()
        client = URLSessionNetworkClient(session: .shared)
        cancellables = []
    }
    
    override func tearDown() {
        client = nil
        cancellables = nil
        super.tearDown()
    }
    
    func testInvalidURL() {
        struct DummyEndpoint: Endpoint {
            var baseURL: URL = URL(string: "https://invalid.url")!
            var path: String = "%%%invalid"
            var method: HTTPMethod = .get
        }
        
        let expectation = XCTestExpectation(description: "Invalid URL fails")
        
        client.request(DummyEndpoint())
            .sink { completion in
                switch completion {
                case .failure(let error):
                    if case .invalidURL = error {
                        expectation.fulfill()
                    }
                default: break
                }
            } receiveValue: { (_: Empty) in }
            .store(in: &cancellables)
        
        wait(for: [expectation], timeout: 2)
    }
}

