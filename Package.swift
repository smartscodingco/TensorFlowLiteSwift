// swift-tools-version:5.3

import PackageDescription

let package = Package(
    name: "TensorFlowLiteSwift",
    products: [
        .library(
            name: "TensorFlowLiteSwift",
            targets: ["TensorFlowLite"]),
    ],
    dependencies: [
        .package(url: "https://github.com/kewlbear/TensorFlowLiteC.git", .exact("2.7.0")),
    ],
    targets: [
        .target(
            name: "TensorFlowLite",
            dependencies: [
                .product(name: "TensorFlowLiteC", package: "TensorFlowLiteC"),
            ],
            resources: [
                .copy("LICENSE"),
                .copy("README.md")
            ]
        ),
    ]
)
