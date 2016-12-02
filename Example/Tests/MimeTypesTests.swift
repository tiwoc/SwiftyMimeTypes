/*
 Copyright 2016 Daniel Seither <d@fdseither.de>

 Licensed under the Apache License, Version 2.0 (the "License");
 you may not use this file except in compliance with the License.
 You may obtain a copy of the License at

 http://www.apache.org/licenses/LICENSE-2.0

 Unless required by applicable law or agreed to in writing, software
 distributed under the License is distributed on an "AS IS" BASIS,
 WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
 See the License for the specific language governing permissions and
 limitations under the License.
*/

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
