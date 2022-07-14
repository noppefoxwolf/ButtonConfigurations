import UIKit

public extension UIButton.Configuration {
    func updated(_ configurator: (inout Self) -> Void) -> Self {
        var configuration = self
        configurator(&configuration)
        return configuration
    }
}

public extension UIButton.Configuration {
    static var homeScreenConfirm: Self {
        .plain().updated { configuration in
            configuration.background.visualEffect = UIBlurEffect(style: .systemThinMaterialLight)
            configuration.baseForegroundColor = .black
            configuration.cornerStyle = .capsule
            configuration.titleTextAttributesTransformer = .init({ container in
                var container = container
                container.font = .boldSystemFont(ofSize: 16)
                return container
            })
        }
    }
}
