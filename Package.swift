// swift-tools-version:5.3

import PackageDescription

let package = Package(
    name: "HexUI",
    products: [
        .library(name: "HexUI", targets: ["HexUI"]),
        .executable(name: "ExampleApp", targets: ["ExampleApp"])
    ],
    dependencies: [],
    targets: [
        .systemLibrary(name: "CGtk3", path: "Libraries/CGtk3", pkgConfig: "gtk+-3.0"),
        
        .target(name: "HexUI", dependencies: ["CGtk3"]),
        .target(name: "ExampleApp", dependencies: ["HexUI"]),
        .testTarget(name: "ExampleAppTests", dependencies: ["ExampleApp"]),
    ]
)
