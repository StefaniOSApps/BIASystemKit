// swift-tools-version:5.2

import PackageDescription

let package = Package(
  name: "BIASystemKit",
  platforms: [
    .iOS(.v11)
  ],
  products: [
    .library(name: "BIASystemKit", targets: ["BIASystemKit"])
  ],
  targets: [
    .target(name: "BIASystemKit", path: "BIASystemKit"),
    .testTarget(name: "BIASystemKitTests", dependencies: [
      "BIASystemKit"
    ])
  ],
  swiftLanguageVersions: [
    .v5
  ]
)
