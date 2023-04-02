#
# To learn more about a Podspec see http://guides.cocoapods.org/syntax/podspec.html.
# Run `pod lib lint mobile_security_suite.podspec` to validate before publishing.
#
Pod::Spec.new do |s|
  s.name             = 'mobile_security_suite'
  s.version          = '1.0.0'
  s.summary          = 'A mobile Flutter plugin for platform security & anti-tampering.'
  s.description      = <<-DESC
Platform Security & Anti-Tampering Flutter Library
                       DESC
  s.homepage         = 'https://sperixlabs.org'
  s.license          = { :file => '../LICENSE' }
  s.author           = { 'Jay' => 'securityteam@sperixlabs.org' }
  s.source           = { :path => '.' }
  s.source_files = 'Classes/**/*'
  s.dependency 'Flutter'
  s.dependency 'IOSSecuritySuite'
  s.platform = :ios, '9.0'

  # Flutter.framework does not contain a i386 slice.
  s.pod_target_xcconfig = { 'DEFINES_MODULE' => 'YES', 'EXCLUDED_ARCHS[sdk=iphonesimulator*]' => 'i386' }
  s.swift_version = '5.0'
end
