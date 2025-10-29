import UIKit

public struct FPNCountry: Equatable {

    public var code: FPNCountryCode
    public var name: String
    public var phoneCode: String
    public var phoneCodeForValidating: String?
    var flag: UIImage?

    init(code: String, name: String, phoneCode: String) {
        self.name = name
        self.phoneCode = phoneCode
        self.code = FPNCountryCode(rawValue: code)!
        self.phoneCodeForValidating = phoneCode
        if let flag = UIImage(named: code, in: Bundle.module, compatibleWith: nil) {
            self.flag = flag
        } else {
            self.flag = UIImage(named: "unknown", in: Bundle.module, compatibleWith: nil)
        }
    }

    static public func ==(lhs: FPNCountry, rhs: FPNCountry) -> Bool {
        return lhs.code == rhs.code
    }
}
