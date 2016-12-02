public class MimeTypes {

    /// Shared instance for common use
    public static let shared = MimeTypes()

    public init() {
    }

    /**
     Returns a matching filename extension for a MIME type
    */
    public func filenameExtension(forType type: String) -> String? {
        return nil
    }
}
