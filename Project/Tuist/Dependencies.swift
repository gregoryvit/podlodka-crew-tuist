import ProjectDescription

let dependencies = Dependencies(
    swiftPackageManager: SwiftPackageManagerDependencies(
        [
            .package(
                url: "https://github.com/SnapKit/SnapKit.git",
                    .upToNextMajor(from: "5.0.1")
            ),
            .package(
                url: "https://github.com/airbnb/lottie-ios.git",
                from: "3.2.1"
            )
        ],
        productTypes: ["Lottie": .framework]
    ),
    platforms: [.iOS]
)
