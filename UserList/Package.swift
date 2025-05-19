// swift-tools-version: 5.10
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
    name: "UserList",
    platforms: [
        .iOS(.v16)
    ],
    products: [
        // Products define the executables and libraries a package produces, making them visible to other packages.
        .library(
            name: "UserList",
            targets: ["UserList"]),
    ],
    dependencies: [
        // ✅ Add Resolver dependency here
        .package(url: "https://github.com/hmlongco/Resolver.git", from: "1.5.0"),
        .package(path: "../NetworkLayer")
    ],
    targets: [
        // Targets are the basic building blocks of a package, defining a module or a test suite.
        // Targets can depend on other targets in this package and products from dependencies.
        .target(
            name: "UserList",
            dependencies: [
                "NetworkLayer",
                .product(name: "Resolver", package: "Resolver")
            ]),
        .testTarget(
            name: "UserListTests",
            dependencies: ["UserList"]),
    ]
)
