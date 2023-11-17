import Foundation
#if canImport(AppKit)
import AppKit
#endif
#if canImport(UIKit)
import UIKit
#endif
#if canImport(SwiftUI)
import SwiftUI
#endif
#if canImport(DeveloperToolsSupport)
import DeveloperToolsSupport
#endif

#if SWIFT_PACKAGE
private let resourceBundle = Foundation.Bundle.module
#else
private class ResourceBundleClass {}
private let resourceBundle = Foundation.Bundle(for: ResourceBundleClass.self)
#endif

// MARK: - Color Symbols -

@available(iOS 17.0, macOS 14.0, tvOS 17.0, watchOS 10.0, *)
extension DeveloperToolsSupport.ColorResource {

}

// MARK: - Image Symbols -

@available(iOS 17.0, macOS 14.0, tvOS 17.0, watchOS 10.0, *)
extension DeveloperToolsSupport.ImageResource {

    /// The "fruitBowl" asset catalog image resource.
    static let fruitBowl = DeveloperToolsSupport.ImageResource(name: "fruitBowl", bundle: resourceBundle)

    /// The "fruitBowl-all" asset catalog image resource.
    static let fruitBowlAll = DeveloperToolsSupport.ImageResource(name: "fruitBowl-all", bundle: resourceBundle)

    /// The "fruitBowl-grape" asset catalog image resource.
    static let fruitBowlGrape = DeveloperToolsSupport.ImageResource(name: "fruitBowl-grape", bundle: resourceBundle)

    /// The "fruitBowl-grape-pear" asset catalog image resource.
    static let fruitBowlGrapePear = DeveloperToolsSupport.ImageResource(name: "fruitBowl-grape-pear", bundle: resourceBundle)

    /// The "fruitBowl-orange" asset catalog image resource.
    static let fruitBowlOrange = DeveloperToolsSupport.ImageResource(name: "fruitBowl-orange", bundle: resourceBundle)

    /// The "fruitBowl-orange-grape" asset catalog image resource.
    static let fruitBowlOrangeGrape = DeveloperToolsSupport.ImageResource(name: "fruitBowl-orange-grape", bundle: resourceBundle)

    /// The "fruitBowl-orange-pear" asset catalog image resource.
    static let fruitBowlOrangePear = DeveloperToolsSupport.ImageResource(name: "fruitBowl-orange-pear", bundle: resourceBundle)

    /// The "fruitBowl-pear" asset catalog image resource.
    static let fruitBowlPear = DeveloperToolsSupport.ImageResource(name: "fruitBowl-pear", bundle: resourceBundle)

    /// The "grape" asset catalog image resource.
    static let grape = DeveloperToolsSupport.ImageResource(name: "grape", bundle: resourceBundle)

    /// The "orange" asset catalog image resource.
    static let orange = DeveloperToolsSupport.ImageResource(name: "orange", bundle: resourceBundle)

    /// The "pear" asset catalog image resource.
    static let pear = DeveloperToolsSupport.ImageResource(name: "pear", bundle: resourceBundle)

}

// MARK: - Color Symbol Extensions -

#if canImport(AppKit)
@available(macOS 14.0, *)
@available(macCatalyst, unavailable)
extension AppKit.NSColor {

}
#endif

#if canImport(UIKit)
@available(iOS 17.0, tvOS 17.0, *)
@available(watchOS, unavailable)
extension UIKit.UIColor {

}
#endif

#if canImport(SwiftUI)
@available(iOS 17.0, macOS 14.0, tvOS 17.0, watchOS 10.0, *)
extension SwiftUI.Color {

}

@available(iOS 17.0, macOS 14.0, tvOS 17.0, watchOS 10.0, *)
extension SwiftUI.ShapeStyle where Self == SwiftUI.Color {

}
#endif

// MARK: - Image Symbol Extensions -

#if canImport(AppKit)
@available(macOS 14.0, *)
@available(macCatalyst, unavailable)
extension AppKit.NSImage {

    /// The "fruitBowl" asset catalog image.
    static var fruitBowl: AppKit.NSImage {
#if !targetEnvironment(macCatalyst)
        .init(resource: .fruitBowl)
#else
        .init()
#endif
    }

    /// The "fruitBowl-all" asset catalog image.
    static var fruitBowlAll: AppKit.NSImage {
#if !targetEnvironment(macCatalyst)
        .init(resource: .fruitBowlAll)
#else
        .init()
#endif
    }

    /// The "fruitBowl-grape" asset catalog image.
    static var fruitBowlGrape: AppKit.NSImage {
#if !targetEnvironment(macCatalyst)
        .init(resource: .fruitBowlGrape)
#else
        .init()
#endif
    }

    /// The "fruitBowl-grape-pear" asset catalog image.
    static var fruitBowlGrapePear: AppKit.NSImage {
#if !targetEnvironment(macCatalyst)
        .init(resource: .fruitBowlGrapePear)
#else
        .init()
#endif
    }

    /// The "fruitBowl-orange" asset catalog image.
    static var fruitBowlOrange: AppKit.NSImage {
#if !targetEnvironment(macCatalyst)
        .init(resource: .fruitBowlOrange)
#else
        .init()
#endif
    }

    /// The "fruitBowl-orange-grape" asset catalog image.
    static var fruitBowlOrangeGrape: AppKit.NSImage {
#if !targetEnvironment(macCatalyst)
        .init(resource: .fruitBowlOrangeGrape)
#else
        .init()
#endif
    }

    /// The "fruitBowl-orange-pear" asset catalog image.
    static var fruitBowlOrangePear: AppKit.NSImage {
#if !targetEnvironment(macCatalyst)
        .init(resource: .fruitBowlOrangePear)
#else
        .init()
#endif
    }

    /// The "fruitBowl-pear" asset catalog image.
    static var fruitBowlPear: AppKit.NSImage {
#if !targetEnvironment(macCatalyst)
        .init(resource: .fruitBowlPear)
#else
        .init()
#endif
    }

    /// The "grape" asset catalog image.
    static var grape: AppKit.NSImage {
#if !targetEnvironment(macCatalyst)
        .init(resource: .grape)
#else
        .init()
#endif
    }

    /// The "orange" asset catalog image.
    static var orange: AppKit.NSImage {
#if !targetEnvironment(macCatalyst)
        .init(resource: .orange)
#else
        .init()
#endif
    }

    /// The "pear" asset catalog image.
    static var pear: AppKit.NSImage {
#if !targetEnvironment(macCatalyst)
        .init(resource: .pear)
#else
        .init()
#endif
    }

}
#endif

#if canImport(UIKit)
@available(iOS 17.0, tvOS 17.0, *)
@available(watchOS, unavailable)
extension UIKit.UIImage {

    /// The "fruitBowl" asset catalog image.
    static var fruitBowl: UIKit.UIImage {
#if !os(watchOS)
        .init(resource: .fruitBowl)
#else
        .init()
#endif
    }

    /// The "fruitBowl-all" asset catalog image.
    static var fruitBowlAll: UIKit.UIImage {
#if !os(watchOS)
        .init(resource: .fruitBowlAll)
#else
        .init()
#endif
    }

    /// The "fruitBowl-grape" asset catalog image.
    static var fruitBowlGrape: UIKit.UIImage {
#if !os(watchOS)
        .init(resource: .fruitBowlGrape)
#else
        .init()
#endif
    }

    /// The "fruitBowl-grape-pear" asset catalog image.
    static var fruitBowlGrapePear: UIKit.UIImage {
#if !os(watchOS)
        .init(resource: .fruitBowlGrapePear)
#else
        .init()
#endif
    }

    /// The "fruitBowl-orange" asset catalog image.
    static var fruitBowlOrange: UIKit.UIImage {
#if !os(watchOS)
        .init(resource: .fruitBowlOrange)
#else
        .init()
#endif
    }

    /// The "fruitBowl-orange-grape" asset catalog image.
    static var fruitBowlOrangeGrape: UIKit.UIImage {
#if !os(watchOS)
        .init(resource: .fruitBowlOrangeGrape)
#else
        .init()
#endif
    }

    /// The "fruitBowl-orange-pear" asset catalog image.
    static var fruitBowlOrangePear: UIKit.UIImage {
#if !os(watchOS)
        .init(resource: .fruitBowlOrangePear)
#else
        .init()
#endif
    }

    /// The "fruitBowl-pear" asset catalog image.
    static var fruitBowlPear: UIKit.UIImage {
#if !os(watchOS)
        .init(resource: .fruitBowlPear)
#else
        .init()
#endif
    }

    /// The "grape" asset catalog image.
    static var grape: UIKit.UIImage {
#if !os(watchOS)
        .init(resource: .grape)
#else
        .init()
#endif
    }

    /// The "orange" asset catalog image.
    static var orange: UIKit.UIImage {
#if !os(watchOS)
        .init(resource: .orange)
#else
        .init()
#endif
    }

    /// The "pear" asset catalog image.
    static var pear: UIKit.UIImage {
#if !os(watchOS)
        .init(resource: .pear)
#else
        .init()
#endif
    }

}
#endif

// MARK: - Thinnable Asset Support -

@available(iOS 17.0, macOS 14.0, tvOS 17.0, watchOS 10.0, *)
@available(watchOS, unavailable)
extension DeveloperToolsSupport.ColorResource {

    private init?(thinnableName: String, bundle: Bundle) {
#if canImport(AppKit) && os(macOS)
        if AppKit.NSColor(named: NSColor.Name(thinnableName), bundle: bundle) != nil {
            self.init(name: thinnableName, bundle: bundle)
        } else {
            return nil
        }
#elseif canImport(UIKit) && !os(watchOS)
        if UIKit.UIColor(named: thinnableName, in: bundle, compatibleWith: nil) != nil {
            self.init(name: thinnableName, bundle: bundle)
        } else {
            return nil
        }
#else
        return nil
#endif
    }

}

#if canImport(UIKit)
@available(iOS 17.0, tvOS 17.0, *)
@available(watchOS, unavailable)
extension UIKit.UIColor {

    private convenience init?(thinnableResource: DeveloperToolsSupport.ColorResource?) {
#if !os(watchOS)
        if let resource = thinnableResource {
            self.init(resource: resource)
        } else {
            return nil
        }
#else
        return nil
#endif
    }

}
#endif

#if canImport(SwiftUI)
@available(iOS 17.0, macOS 14.0, tvOS 17.0, watchOS 10.0, *)
extension SwiftUI.Color {

    private init?(thinnableResource: DeveloperToolsSupport.ColorResource?) {
        if let resource = thinnableResource {
            self.init(resource)
        } else {
            return nil
        }
    }

}

@available(iOS 17.0, macOS 14.0, tvOS 17.0, watchOS 10.0, *)
extension SwiftUI.ShapeStyle where Self == SwiftUI.Color {

    private init?(thinnableResource: DeveloperToolsSupport.ColorResource?) {
        if let resource = thinnableResource {
            self.init(resource)
        } else {
            return nil
        }
    }

}
#endif

@available(iOS 17.0, macOS 14.0, tvOS 17.0, watchOS 10.0, *)
@available(watchOS, unavailable)
extension DeveloperToolsSupport.ImageResource {

    private init?(thinnableName: String, bundle: Bundle) {
#if canImport(AppKit) && os(macOS)
        if bundle.image(forResource: NSImage.Name(thinnableName)) != nil {
            self.init(name: thinnableName, bundle: bundle)
        } else {
            return nil
        }
#elseif canImport(UIKit) && !os(watchOS)
        if UIKit.UIImage(named: thinnableName, in: bundle, compatibleWith: nil) != nil {
            self.init(name: thinnableName, bundle: bundle)
        } else {
            return nil
        }
#else
        return nil
#endif
    }

}

#if canImport(AppKit)
@available(macOS 14.0, *)
@available(macCatalyst, unavailable)
extension AppKit.NSImage {

    private convenience init?(thinnableResource: DeveloperToolsSupport.ImageResource?) {
#if !targetEnvironment(macCatalyst)
        if let resource = thinnableResource {
            self.init(resource: resource)
        } else {
            return nil
        }
#else
        return nil
#endif
    }

}
#endif

#if canImport(UIKit)
@available(iOS 17.0, tvOS 17.0, *)
@available(watchOS, unavailable)
extension UIKit.UIImage {

    private convenience init?(thinnableResource: DeveloperToolsSupport.ImageResource?) {
#if !os(watchOS)
        if let resource = thinnableResource {
            self.init(resource: resource)
        } else {
            return nil
        }
#else
        return nil
#endif
    }

}
#endif

