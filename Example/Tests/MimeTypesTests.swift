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

    func testExtensionForCommonTypes() {
        XCTAssertEqual(uut.filenameExtension(forType: "application/json"), "json")
        XCTAssertEqual(uut.filenameExtension(forType: "image/png"), "png")
        XCTAssertEqual(uut.filenameExtension(forType: "text/plain"), "txt")
    }
}
