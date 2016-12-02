import XCTest
import SwiftyMimeTypes

class MimeTypesTests: XCTestCase {
    var uut = MimeTypes.shared

    func testExtensionForUnknownType() {
        XCTAssertNil(uut.filenameExtension(forType: "invented/type"))
    }

    func testExtensionForCommonTypes() {
        XCTAssertEqual(uut.filenameExtension(forType: "application/json"), "json")
        XCTAssertEqual(uut.filenameExtension(forType: "image/png"), "png")
        XCTAssertEqual(uut.filenameExtension(forType: "text/plain"), "txt")
    }

    func testMimeTypeForUnknownExtension() {
        XCTAssertNil(uut.mimeType(forExtension: "invented"))
    }

    func testMimeTypeForCommonExtensions() {
        XCTAssertEqual(uut.mimeType(forExtension: "txt"), "text/plain")
        XCTAssertEqual(uut.mimeType(forExtension: "jpeg"), "image/jpeg")
        XCTAssertEqual(uut.mimeType(forExtension: "jpg"), "image/jpeg")
    }
}
