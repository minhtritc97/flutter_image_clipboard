#
# To learn more about a Podspec see http://guides.cocoapods.org/syntax/podspec.html.
# Run `pod lib lint flutter_image_clipboard.podspec` to validate before publishing.
#
Pod::Spec.new do |s|
  s.name             = 'flutter_image_clipboard'
  s.version          = '1.0.0'
  s.summary          = 'A Flutter plugin that enables copying images to the clipboard on Android and IOS devices.'
  s.description      = <<-DESC
A Flutter plugin that enables copying images to the clipboard on Android and IOS devices.
                       DESC
  s.homepage         = 'https://github.com/Numanshakir/flutter_image_clipboard.git'
  s.license          = { :file => '../LICENSE' }
  s.author           = { 'Numan Shakir' => 'numanshair248@gmail.com' }
  s.source           = { :path => '.' }
  s.source_files = 'Classes/**/*'
  s.dependency 'Flutter'
  s.platform = :ios, '13.0'

  # Flutter.framework does not contain a i386 slice.
  s.pod_target_xcconfig = { 'DEFINES_MODULE' => 'YES', 'EXCLUDED_ARCHS[sdk=iphonesimulator*]' => 'i386' }
  s.swift_version = '5.0'
end
