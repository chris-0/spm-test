// swift-tools-version:5.3
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
    name: "Permutive_iOS",
    platforms: [.macOS(.v10_15), .iOS(.v11)],
    products: [
        // Products define the executables and libraries produced by a package, and make them visible to other packages.
        .library(
            name: "Permutive_iOS",
            targets: ["Permutive_iOS"]),
    ],
    dependencies: [
        // Dependencies declare other packages that this package depends on.
        // .package(url: /* package url */, from: "1.0.0"),
    ],
    targets: [
        .binaryTarget(name:"Permutive_iOS",
                      url:"https://storage.googleapis.com/permutive-ios-sdks/swift-sdk/Permutive-iOS-v1.0.0-beta1.zip",
                      checksum: "7a0d716aa5b3869f7205e945bd8ce0bc1988ca6a568911985764407cada2dd8b")
    ]
)
