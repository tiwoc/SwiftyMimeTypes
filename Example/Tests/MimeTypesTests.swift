import XCTest
import SwiftyMimeTypes

class MimeTypesTests: XCTestCase {
    var uut = MimeTypes()

    override func setUp() {
        super.setUp()

        uut = MimeTypes()
    }

    func testExtensionForUnknownType() {
        XCTAssertNil(uut.filenameExtension(forType: "invented/type"))
    }
}
