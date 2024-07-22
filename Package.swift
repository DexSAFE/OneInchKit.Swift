// swift-tools-version:5.5
import PackageDescription

let package = Package(
    name: "OneInchKit",
    platforms: [
        .iOS(.v13),
    ],
    products: [
        .library(
            name: "OneInchKit",
            targets: ["OneInchKit"]
        ),
    ],
    dependencies: [
        .package(url: "https://github.com/attaswift/BigInt.git", .upToNextMajor(from: "5.0.0")),
        .package(url: "https://github.com/DexSAFE/EvmKit.Swift.git", .upToNextMajor(from: "2.0.15")),
        .package(url: "https://github.com/DexSAFE/Eip20Kit.Swift.git", .upToNextMajor(from: "2.0.3")),
        .package(url: "https://github.com/DexSAFE/HsCryptoKit.Swift.git", .upToNextMajor(from: "1.2.1")),
        .package(url: "https://github.com/DexSAFE/HsExtensions.Swift.git", .upToNextMajor(from: "1.0.6")),
        .package(url: "https://github.com/DexSAFE/HsToolKit.Swift.git", .upToNextMajor(from: "2.0.0")),
    ],
    targets: [
        .target(
            name: "OneInchKit",
            dependencies: [
                "BigInt",
                .product(name: "EvmKit", package: "EvmKit.Swift"),
                .product(name: "Eip20Kit", package: "Eip20Kit.Swift"),
                .product(name: "HsCryptoKit", package: "HsCryptoKit.Swift"),
                .product(name: "HsExtensions", package: "HsExtensions.Swift"),
                .product(name: "HsToolKit", package: "HsToolKit.Swift"),
            ]
        ),
    ]
)
