#
# Be sure to run `pod lib lint Core.podspec' to ensure this is a
# valid spec before submitting.
#
# Any lines starting with a # are optional, but their use is encouraged
# To learn more about a Podspec see https://guides.cocoapods.org/syntax/podspec.html
#

Pod::Spec.new do |s|
  s.name             = 'Core'
  s.version          = '1.0.1'
  s.summary          = 'A short description of Core.'

# This description is used to generate tags and improve search results.
#   * Think: What does it do? Why did you write it? What is the focus?
#   * Try to keep it short, snappy and to the point.
#   * Write the description between the DESC delimiters below.
#   * Finally, don't worry about the indent, CocoaPods strips it!

  s.description      = <<-DESC
TODO: Add long description of the pod here.
                       DESC

  s.homepage         = 'https://github.com/95286760/Core'
  # s.screenshots     = 'www.example.com/screenshots_1', 'www.example.com/screenshots_2'
  s.license          = { :type => 'MIT', :file => 'LICENSE' }
  s.author           = { 'Sy Quan' => 'syquandev@gmail.com' }
  s.source           = { :git => 'https://github.com/95286760/Core.git', :tag => s.version.to_s }
  # s.social_media_url = 'https://twitter.com/<TWITTER_USERNAME>'

  s.swift_version = '4.2'
  s.ios.deployment_target = '11.0'

  s.source_files = 'Core/Classes/**/*'
  
  s.resource_bundles = {
    'Core' => [
    'Core/Assets/Storyboards/**/*.storyboard',
    'Core/Assets/Xibs/**/*.xib',
    'Core/Assets/Resources/**/*.xcassets',
    'Core/Classes/**/*.xib',
    'Core/Classes/**/*.storyboard']
  }
  
  s.static_framework = true
  
  s.dependency 'RxSwift'
  s.dependency 'ObjectMapper', '4.2.0'
  s.dependency 'FontAwesome'
  s.dependency 'SwiftDate', '6.3.1'
end
