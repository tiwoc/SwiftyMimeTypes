import Foundation

class MimeType {
    let mimeType: String
    let extensions: [String]

    init(mimeType: String, extensions: [String]) {
        precondition(extensions.count > 0, "MIME type must have one or more extensions")

        self.mimeType = mimeType
        self.extensions = extensions
    }
}

public class MimeTypes {

    /// Shared instance for common use
    public static let shared = MimeTypes()

    private var byType = [String: MimeType]()

    private init() {
        let dbText = MimeTypes.readDBFromBundle()
        dbText.enumerateLines { line, _ in
            let fields = line.components(separatedBy: " ")
            if fields.count < 2 { return }
            let type = MimeType(mimeType: fields[0], extensions: Array(fields.suffix(from: 1)))

            self.byType[type.mimeType] = type
        }
    }

    /**
     Returns a matching filename extension for a MIME type
    */
    public func filenameExtension(forType type: String) -> String? {
        return byType[type]?.extensions.first
    }

    private static func readDBFromBundle() -> String {
        let toplevelBundle = Bundle(for: MimeType.self)

        guard let assetBundleUrl = toplevelBundle.url(forResource: "SwiftyMimeTypes", withExtension: "bundle") else {
            preconditionFailure("SwiftyMimeTypes bundle not found")
        }

        guard let assetBundle = Bundle(url: assetBundleUrl) else {
            preconditionFailure("SwiftyMimeTypes bundle could not be loaded")
        }

        guard let dbUrl = assetBundle.url(forResource: "mime", withExtension: "types") else {
            preconditionFailure("mime.types could not be found")
        }

        do {
            return try String(contentsOf: dbUrl, encoding: String.Encoding.utf8)
        } catch _ {
            preconditionFailure("mime.types could not be loaded")
        }
    }
}
