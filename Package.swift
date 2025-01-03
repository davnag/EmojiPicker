// swift-tools-version: 5.9

import PackageDescription

let package = Package(
    name: "EmojiPicker",
    defaultLocalization: "en",
    platforms: [.iOS(.v15)],
    products: [
        .library(
            name: "EmojiPicker",
            targets: ["EmojiPicker"]
        )
    ],
    dependencies: [],
    targets: [
        .target(
            name: "EmojiPicker",
            resources: [
                .process("Resources")
            ]
        ),
        .testTarget(
            name: "EmojiPickerTests",
            dependencies: ["EmojiPicker"]
        )
    ]
)
