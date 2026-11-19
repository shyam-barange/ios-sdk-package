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
            url: "https://github.com/shyam-barange/ios-sdk-package/releases/download/2.5.0/MultiSetCore.xcframework.zip",
            checksum: "16ec9970bb0642d1f04b869ba5ce9abf2cc5a7a873e129a98770e5987501fef5"
        ),
        .target(
            name: "MultiSetSDK",
            dependencies: ["MultiSetCore"],
            path: "Sources/MultiSetSDK"
        ),
    ]
)
