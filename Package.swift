// swift-tools-version:5.3

import PackageDescription

#if os(OSX)
let Platform = "Mac"
#elseif os(Linux)
let Platform = "Linux"
#else
#error("Unknown Platform.")
#endif

let package = Package(
    name: "HexUI",
    platforms: [
        .iOS(.v14)
    ],
    products: [
        .library(name: "HexUI", targets: ["HexUI"]),
        .library(name: "ExampleApp", targets: ["ExampleApp"]),
        .executable(name: "ExampleRun", targets: ["ExampleRun"])
    ],
    dependencies: [],
    targets: [
        .systemLibrary(
            name: "CGtk",
            path: "Libraries/CGtk-\(Platform)",
            pkgConfig: "gtk+-3.0",
            providers: [.apt(["gtk3.0-dev"]),
                        .brew(["pkg-config", "gtk+3"])]),
        
        .target(name: "HexUI", dependencies: ["CGtk"]),
        .target(name: "ExampleRun", dependencies: ["ExampleApp"]),
        .target(name: "ExampleApp", dependencies: ["HexUI"]),
        .testTarget(name: "ExampleAppTests", dependencies: ["ExampleApp"]),
    ]
)
