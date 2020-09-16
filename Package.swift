// swift-tools-version:5.3

import PackageDescription

let package = Package(
  name: "BIASystemKit",
  platforms: [
    .iOS(.v9)
  ],
  products: [
    .library(
      name: "BIASystemKit",
      targets: [
        "BIASystemKit"
      ]
    )
  ],
  targets: [
    .target(
      name: "BIASystemKit",
      dependencies: [],
      path: "Source",
      resources: [
        .process("Ressources")
      ]
    ),
    .testTarget(
      name: "BIASystemKitTests",
      dependencies: [
        "BIASystemKit"
      ]
    )
  ],
  swiftLanguageVersions: [
    .v5
  ]
)
