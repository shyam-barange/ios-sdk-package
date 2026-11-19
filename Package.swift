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
            checksum: "62b98007de9341dd67de5789aa2a9711f92ef1b1f841906b111a441d5ae56b5b"
        ),
        .target(
            name: "MultiSetSDK",
            dependencies: ["MultiSetCore"],
            path: "Sources/MultiSetSDK"
        ),
    ]
)
