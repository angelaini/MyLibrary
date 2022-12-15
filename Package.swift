// swift-tools-version: 5.7
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
    name: "MyLibrary",
    products: [
        // Products define the executables and libraries a package produces, and make them visible to other packages.
        .library(
            name: "MyLibrary",
            targets: ["MyLibrary"]),
    ],
    dependencies: [
        // Dependencies declare other packages that this package depends on.
        // .package(url: /* package url */, from: "1.0.0"),
    ],
    targets: [
        // Targets are the basic building blocks of a package. A target can define a module or a test suite.
        // Targets can depend on other targets in this package, and on products in packages this package depends on.
        .binaryTarget(
            name: "AFNetworking",
            url:"https://binary-ios.p1staff.com/binary/AFNetworking/3.2.1/AFNetworking-2022_12_13_10_58_53-Release.zip",
            checksum: "6151cd30c02a5102504549fd9c7e8e478121ed14b118c90e345e90edf367b3b3"
        ),
        .target(
            name: "MyLibrary",
            dependencies: [
                .byName(name: "AFNetworking")
            ]
        )
    ]
)
