public class MimeTypeDB {

    /// Shared instance for common use
    public static let shared = MimeTypeDB()

    public init() {
    }

    /**
     Returns a matching filename extension for a MIME type
    */
    public func filenameExtension(forType type: String) -> String? {
        return nil
    }
}
