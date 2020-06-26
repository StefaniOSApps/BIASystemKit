// swift-tools-version:5.0
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
  name: "BIASystemKit",
  platforms: [
    .iOS(.v11)
  ],
  products: [
    .library(name: "BIASystemKit", targets: ["BIASystemKit"])
  ],
  dependencies: [
  ],
  targets: [
    .target(name: "BIASystemKit", path: "BIASystemKit"),
    .testTarget(name: "BIASystemKitTests", dependencies: [
      "BIASystemKit"
    ])
  ]
)
