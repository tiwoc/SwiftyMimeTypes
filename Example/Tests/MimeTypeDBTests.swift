import XCTest
import SwiftyMimeTypes

class MimeTypeDBTests: XCTestCase {
    var uut = MimeTypeDB()

    override func setUp() {
        super.setUp()

        uut = MimeTypeDB()
    }

    func testExtensionForUnknownType() {
        XCTAssertNil(uut.filenameExtension(forType: "invented/type"))
    }
}
