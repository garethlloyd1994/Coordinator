// swift-tools-version:5.7

import PackageDescription

let package = Package(
    name: "Coordinator",
    platforms: [
        .iOS(.v13),
        .macOS(.v11),
        .tvOS(.v13),
        .watchOS(.v6)
    ],
    products: [
        .library(name: "Coordinator", targets: ["Coordinator"])
    ],
    dependencies: [
        .package(url: "https://github.com/garethlloyd1994/Merge.git", branch: "master"),
        .package(url: "https://github.com/vmanot/Swallow.git", branch: "master"),
        .package(url: "https://github.com/garethlloyd1994/SwiftUIX.git", branch: "master"),
    ],
    targets: [
        .target(
            name: "Coordinator",
            dependencies: [
                "Merge",
                "Swallow",
                "SwiftUIX"
            ],
            path: "Sources"
        ),
    ]
)
