// swift-tools-version:5.1.3
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
    name: "SlackSwift",
    products: [
        // Products define the executables and libraries produced by a package, and make them visible to other packages.
        .library(
            name: "SlackSwift", targets: ["SlackSwift"]),
    ],
    dependencies: [
        // 💧 A server-side Swift web framework.
        .package(name: "Vapor", url: "https://github.com/vapor/vapor.git", from: "3.0.0")
    ],
    targets: [
        // Targets are the basic building blocks of a package. A target can define a module or a test suite.
        // Targets can depend on other targets in this package, and on products in packages which this package depends on.
        .target(name: "SlackSwift", dependencies: ["Vapor"]),
        .testTarget(name: "SlackSwiftTests", dependencies: ["SlackSwift"]),
    ]
)
