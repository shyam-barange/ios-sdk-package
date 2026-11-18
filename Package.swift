// swift-tools-version:5.9
import PackageDescription

let package = Package(
    name: "MultiSetSDK",
    platforms: [.iOS(.v16)],
    products: [
        .library(name: "MultiSetAR", targets: ["MultiSetAR", "MultiSetSDK"]),
        .library(name: "MultiSetSDK", targets: ["MultiSetSDK"]),
    ],
    targets: [
        .binaryTarget(
            name: "MultiSetSDK",
            url: "https://github.com/shyam-barange/ios-sdk-package/releases/download/2.5.0/MultiSetSDK.xcframework.zip",
            checksum: "198a7d0439c5f6d07f974891624721e2afcc6424e252c225d2312421d7ef7564"
        ),
        .target(
            name: "MultiSetAR",
            dependencies: ["MultiSetSDK"],
            path: "Sources/MultiSetAR"
        ),
    ]
)
