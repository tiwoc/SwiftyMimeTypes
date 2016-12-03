#
# Be sure to run `pod lib lint SwiftyMimeTypes.podspec' to ensure this is a
# valid spec before submitting.
#
# Any lines starting with a # are optional, but their use is encouraged
# To learn more about a Podspec see http://guides.cocoapods.org/syntax/podspec.html
#

Pod::Spec.new do |s|
  s.name             = 'SwiftyMimeTypes'
  s.version          = '0.1.1'
  s.summary          = 'A database of MIME types and their filename extensions'

# This description is used to generate tags and improve search results.
#   * Think: What does it do? Why did you write it? What is the focus?
#   * Try to keep it short, snappy and to the point.
#   * Write the description between the DESC delimiters below.
#   * Finally, don't worry about the indent, CocoaPods strips it!

  s.description      = <<-DESC
SwiftyMimeTypes is a database of MIME types and filename extensions.
Use it if you need to know the appropriate MIME type for a given filename
or the extensions associated with a given MIME type.
                       DESC

  s.homepage         = 'https://github.com/tiwoc/SwiftyMimeTypes'
  # s.screenshots     = 'www.example.com/screenshots_1', 'www.example.com/screenshots_2'
  s.license          = { :type => 'Apache-2.0', :file => 'LICENSE' }
  s.author           = { 'Daniel Seither' => 'd@fdseither.de' }
  s.source           = { :git => 'https://github.com/tiwoc/SwiftyMimeTypes.git', :tag => s.version.to_s }
  s.social_media_url = 'https://twitter.com/danielseither'

  s.ios.deployment_target = '8.0'

  s.source_files = 'SwiftyMimeTypes/Classes/**/*'
  
  s.resource_bundles = {
    'SwiftyMimeTypes' => ['SwiftyMimeTypes/Assets/mime.types']
  }

  # s.public_header_files = 'Pod/Classes/**/*.h'
  # s.frameworks = 'UIKit', 'MapKit'
  # s.dependency 'AFNetworking', '~> 2.3'
end
