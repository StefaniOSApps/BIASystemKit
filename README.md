<p align="center">
	<a href="https://github.com/Carthage/Carthage">
		<img src="https://img.shields.io/badge/language-Swift-orange.svg?style=flat-square" alt="Swift"/>
	</a>
	<img src="https://img.shields.io/cocoapods/v/BIASystemKit.svg?style=flat-square" alt="Cocoapods"/>
	<img src="https://img.shields.io/badge/Carthage-compatible-blue.svg?style=flat-square" alt="Carthage"/>
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
| Swift 5.0 | [master](https://github.com/StefaniOSApps/BIASystemKit/tree/master) | >= 1.3.x    | Xcode 11.0+           | iOS 11.0+    |



### CocoaPods

[CocoaPods](http://cocoapods.org) is a dependency manager for Cocoa projects. You can install it with the following command:

```bash
$ gem install cocoapods
```

To integrate BIASystemKit into your Xcode project using CocoaPods, specify it in your `Podfile`:

```ruby
source 'https://github.com/CocoaPods/Specs.git'
platform :ios, '11.0'
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
UIDevice.current.formattedName
// prints: iPhone 11 PRO
```
