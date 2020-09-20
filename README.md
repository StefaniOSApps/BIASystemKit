<p align="center">
	<a href="https://github.com/Carthage/Carthage">
		<img src="https://img.shields.io/badge/language-Swift-orange.svg?style=flat-square" alt="Swift"/>
	</a>
	<img src="https://img.shields.io/cocoapods/v/BIASystemKit.svg?style=flat-square" alt="Cocoapods"/>
	<img src="https://img.shields.io/badge/Carthage-compatible-blue.svg?style=flat-square" alt="Carthage"/>
	<a href="https://codebeat.co/projects/github-com-stefaniosapps-biasystemkit-master"><img alt="codebeat badge" src="https://codebeat.co/badges/43e4f011-c685-4b7b-b830-9914393eccd9" /></a>
	<a href="http://cocoapods.org/pods/BIASystemKit">
		<img src="https://img.shields.io/cocoapods/p/BIASystemKit.svg?style=flat-square" alt="iOS"/>
	</a>
	<a href="http://cocoapods.org/pods/BIASystemKit">
		<img src="https://img.shields.io/cocoapods/l/BIASystemKit.svg?style=flat-square" alt="License"/>
	</a>
</p>

<p align="center">
	<b>
	BIASystemKit is a Framework for iOS to getting simply the device name!
	</b>
</p>

## Installation

### Requirements


| Language  | Branch                                                           | Pod version | Xcode version         | iOS version |
| --------- | ---------------------------------------------------------------- | ----------- | --------------------- | ----------- |
| Swift 5.3 | [master](https://github.com/StefaniOSApps/BIASystemKit/tree/master) | >= 2.0.x    | Xcode 12.0+           | iOS 9.0+    |



### CocoaPods

[CocoaPods](http://cocoapods.org) is a dependency manager for Cocoa projects. You can install it with the following command:

```bash
$ gem install cocoapods
```

To integrate BIASystemKit into your Xcode project using CocoaPods, specify it in your `Podfile`:

```ruby
source 'https://github.com/CocoaPods/Specs.git'
platform :ios, '9.0'
use_frameworks!

target '<Your Target Name>' do
    pod 'BIASystemKit'
end
```

Then, run the following command:

```bash
$ pod install
```

## Example
```swift
print(BIAInfo.device(for: .current).modelName)
// String: x86_64

print(BIAInfo.device(for: .current).formattedName)
// String?: iPhone 11 Pro Max

print(BIAInfo.device(for: .current).version)
// String: 13.0.1

print(BIAInfo.system.upTime(unitsStyle: .short))
// String?: 2 days, 18 hr, 14 min, 3 sec

print(BIAInfo.system.upTime)
// TimeInterval: 238443.2

print(BIAInfo.secure.isJailBroken)
// Bool: false

print(BIAInfo.processor.count)
// Int: 6

print(BIAInfo.processor.activeCount)
// Int: 4
```
