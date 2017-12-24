// swift-tools-version:4.0
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
    name: "Alfred-Toybox",
    dependencies: [
        // Dependencies declare other packages that this package depends on.
         .package(url: "git@github.com:giginet/Toybox.git", from: "1.0.0"),
         .package(url: "git@github.com:satoshin21/AlfredKit.git", from: "0.1.0")
    ],
    targets: [
        .target(
            name: "AlfredToybox",
            dependencies: ["AlfredToyboxCore"]),
        .target(
            name: "AlfredToyboxCore",
            dependencies: ["AlfredKit", "ToyboxKit"])
    ]
)
