// swift-tools-version:5.3
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
    name: "SpriteKit-Spring",
    platforms: [
        .iOS(.v8),
        .macOS(.v10_10),
        .tvOS(.v9)
    ],
    products: [
        .library(
            name: "SpriteKitSpring",
            targets: ["SpriteKitSpring"]),
    ],
    targets: [
        .target(
            name: "SpriteKitSpring",
            path: ".",
            exclude: ["README.md", "LICENSE", "SpriteKit-Spring.podspec"],
            sources: ["SpriteKit-Spring.swift"])
    ]
)
