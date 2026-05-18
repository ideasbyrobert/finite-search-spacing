// swift-tools-version: 6.0
import PackageDescription

let package = Package(
    name: "spacing",
    platforms:
    [
        .macOS(.v14)
    ],
    products:
    [
        .library(
            name: "Spacing",
            targets:
            [
                "Spacing"
            ]
        )
    ],
    targets:
    [
        .target(
            name: "Spacing"
        ),
        .testTarget(
            name: "SpacingTests",
            dependencies:
            [
                "Spacing"
            ]
        )
    ]
)
