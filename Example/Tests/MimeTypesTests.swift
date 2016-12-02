import XCTest
import SwiftyMimeTypes

class MimeTypesTests: XCTestCase {
    func testExtensionForUnknownType() {
        XCTAssertNil(MimeTypes.filenameExtension(forType: "invented/type"))
    }

    func testExtensionForCommonTypes() {
        XCTAssertEqual(MimeTypes.filenameExtension(forType: "application/json"), "json")
        XCTAssertEqual(MimeTypes.filenameExtension(forType: "image/png"), "png")
        XCTAssertEqual(MimeTypes.filenameExtension(forType: "text/plain"), "txt")
    }

    func testMimeTypeForUnknownExtension() {
        XCTAssertNil(MimeTypes.mimeType(forExtension: "invented"))
    }

    func testMimeTypeForCommonExtensions() {
        XCTAssertEqual(MimeTypes.mimeType(forExtension: "txt"), "text/plain")
        XCTAssertEqual(MimeTypes.mimeType(forExtension: "jpeg"), "image/jpeg")
        XCTAssertEqual(MimeTypes.mimeType(forExtension: "jpg"), "image/jpeg")
    }
}
