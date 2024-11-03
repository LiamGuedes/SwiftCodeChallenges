// swift-tools-version: 5.6

import PackageDescription
import AppleProductTypes

let package = Package(
    name: "SwiftCodeChallenges",
    platforms: [
        .iOS("15.2")
    ],
    products: [
        .iOSApplication(
            name: "SwiftCodeChallenges",
            targets: ["Solutions"],
            bundleIdentifier: "OMNE.SwiftCodeChallenges",
            displayVersion: "1.0",
            bundleVersion: "1",
            appIcon: .placeholder(icon: .sandwich),
            accentColor: .presetColor(.teal),
            supportedDeviceFamilies: [
                .pad,
                .phone
            ],
            supportedInterfaceOrientations: [
                .portrait,
                .landscapeRight,
                .landscapeLeft,
                .portraitUpsideDown(.when(deviceFamilies: [.pad]))
            ],
            appCategory: .education
        )
    ],
    targets: [
        .executableTarget(
            name: "Solutions",
            path: "Sources/Solutions"
        )
    ]
)
