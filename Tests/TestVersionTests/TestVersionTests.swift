import XCTest
@testable import TestVersion

final class TestVersionTests: XCTestCase {
    func testExample() {
        // This is an example of a functional test case.
        // Use XCTAssert and related functions to verify your tests produce the correct
        // results.
        XCTAssertEqual(TestVersion().text, "Hello, World!")
    }

    static var allTests = [
        ("testExample", testExample),
    ]
}
