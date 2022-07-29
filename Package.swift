// swift-tools-version:5.3
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
    name: "Permutive_iOS_AppNexus",
    platforms: [.iOS(.v11)],
    products: [
        // Products define the executables and libraries produced by a package, and make them visible to other packages.
        .library(
            name: "Permutive_iOS_AppNexus",
            targets: ["Permutive_iOS_AppNexus"]),
    ],
    dependencies: [
        // Dependencies declare other packages that this package depends on.
        .package(
            name: "AppNexusSDK",
            url: "https://github.com/appnexus/mobile-sdk-ios.git",
            .exact("8.0.0")
        ),
        .package(
            name: "Permutive_iOS",
            url: "https://github.com/permutive-engineering/permutive-ios-spm.git",
            from: "1.5.0"
        )
    ],
    targets: [
        .target(
            name: "Permutive_iOS_AppNexus",
            dependencies: [
                .product(name: "AppNexusSDK", package: "AppNexusSDK"),
                .product(name: "Permutive_iOS", package: "Permutive_iOS")
            ],
            path: "spm-test"
        )
    ]
)
