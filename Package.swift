// swift-tools-version: 5.6
// The swift-tools-version declares the minimum version of Swift required to build this package.
//
//  Created by aeastham on 26/08/2022.
//  Copyright © Jaguar Land Rover Ltd 2022 All rights reserved.
//  This software is confidential and proprietary information.
//

import PackageDescription

let package = Package(
    name: "AdapterExample",
    platforms: [
        .iOS(.v13),
        .macOS(.v11),
        .macCatalyst(.v13),
        .tvOS(.v13),
        .watchOS(.v6)
    ],
    products: [
        // Products define the executables and libraries a package produces, and make them visible to other packages.
        .library(
            name: "AdapterExample",
            targets: ["AdapterExample"])
    ],
    dependencies: [
        .package(url: "https://github.com/sroebert/mqtt-nio.git", exact: "2.8.0")
    ],
    targets: [
        // Targets are the basic building blocks of a package. A target can define a module or a test suite.
        // Targets can depend on other targets in this package, and on products in packages this package depends on.
        .target(
            name: "AdapterExample",
            dependencies: [
                .product(name: "MQTTNIO", package: "mqtt-nio")
            ]),
        .testTarget(
            name: "AdapterExampleTests",
            dependencies: ["AdapterExample"])
    ]
)
