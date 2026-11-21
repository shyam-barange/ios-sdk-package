// swift-tools-version:5.9
import PackageDescription

let package = Package(
    name: "MultiSetSDK",
    platforms: [.iOS(.v16)],
    products: [
        .library(name: "MultiSetSDK", targets: ["MultiSetSDK", "MultiSetCore"]),
        .library(name: "MultiSetCore", targets: ["MultiSetCore"]),
    ],
    targets: [
        .binaryTarget(
            name: "MultiSetCore",
            url: "https://github.com/shyam-barange/ios-sdk-package/releases/download/2.5.1/MultiSetCore.xcframework.zip",
            checksum: "b786815f0c5becde4103bb0f4acfb1535fbaa7d72e09b708b7449b5a65965df5"
        ),
        .target(
            name: "MultiSetSDK",
            dependencies: ["MultiSetCore"],
            path: "Sources/MultiSetSDK"
        ),
    ]
)
