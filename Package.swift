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
            checksum: "9411b9d644cbca2891e898a9e48e87b4a0c54e4b07d9e50dfbe1f5f49b392ac8"
        ),
        .target(
            name: "MultiSetAR",
            dependencies: ["MultiSetSDK"],
            path: "Sources/MultiSetAR"
        ),
    ]
)
