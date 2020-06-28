Pod::Spec.new do |s|
  s.name = 'BIASystemKit'
  s.version = '1.0'
  s.license = 'MIT'
  s.summary = 'iOS SystemKit Framework (best-ios-apps.de)'
  s.homepage = 'https://www.best-ios-apps.de'
  s.authors = { 'Stefan Nebel' => 'support@best-ios-apps.de' }
  s.source = { :git => 'https://github.com/StefaniOSApps/BIASystemKit.git', :tag => s.version.to_s }
  s.ios.deployment_target = '11.0'
  s.source_files = 'BIASystemKit/**/*.{h,m,swift,xcdatamodeld,json}'
  s.swift_version = '5.0'
  s.resources = 'BIASystemKit/UIDevice/Ressources/*.json'
  s.ios.resources = 'BIASystemKit/UIDevice/Ressources/*'
  s.ios.framework  = 'UIKit'
end
