Pod::Spec.new do |s|
  s.name = 'BIASystemKit'
  s.version = '2.0'
  s.license = 'MIT'
  s.summary = 'iOS SystemKit Framework (best-ios-apps.de)'
  s.homepage = 'https://www.best-ios-apps.de'
  s.authors = { 'Stefan Nebel' => 'support@best-ios-apps.de' }
  s.source = { 
    :git => 'https://github.com/StefaniOSApps/BIASystemKit.git', 
    :tag => s.version.to_s
  }
  s.source_files = 'Source/**/*.{swift}'
  s.swift_version = '5.3'
  s.resources = ['Source/Resources/*.{json}']
  s.ios.deployment_target = '9.0'
  s.ios.framework  = 'UIKit'
  s.test_spec 'BIASystemKitTests' do |test_spec|
    test_spec.source_files = 'Source/**/*.{swift}'
  end 
end
