#
# Be sure to run `pod lib lint BTYoutubePlayer.podspec' to ensure this is a
# valid spec before submitting.
#
# Any lines starting with a # are optional, but their use is encouraged
# To learn more about a Podspec see http://guides.cocoapods.org/syntax/podspec.html
#

Pod::Spec.new do |s|
  s.name             = 'BTYoutubePlayer'
  s.version          = '1.0.0'
  s.summary          = 'BTYoutubePlayer is a YouTube video player for iOS'

# This description is used to generate tags and improve search results.
#   * Think: What does it do? Why did you write it? What is the focus?
#   * Try to keep it short, snappy and to the point.
#   * Write the description between the DESC delimiters below.
#   * Finally, don't worry about the indent, CocoaPods strips it!

s.description      = <<-DESC
The only official way of playing a YouTube video inside an app is with a web view & the iframe player API. So I wrote this player to play youtube videos using WKWebView & give users a better viewing experience.
DESC

  s.homepage         = 'https://github.com/BhavikThummar/BTYoutubePlayer'
  # s.screenshots     = 'www.example.com/screenshots_1', 'www.example.com/screenshots_2'
  s.license          = { :type => 'MIT', :file => 'LICENSE' }
  s.author           = { 'BhavikThummar' => 'bhavikthummar9797@yahoo.com' }
  s.source           = { :git => 'https://github.com/BhavikThummar/BTYoutubePlayer.git', :tag => s.version.to_s }
  s.social_media_url = 'https://twitter.com/lazy_coderr'

  s.ios.deployment_target = '8.0'

  s.source_files = 'BTYoutubePlayer/Classes/**/*'
  
  s.resource_bundles = {
    'BTYoutubePlayer' => ['BTYoutubePlayer/Assets/*.png']
  }

  # s.public_header_files = 'Pod/Classes/**/*.h'
  # s.frameworks = 'UIKit', 'MapKit'
  # s.dependency 'AFNetworking', '~> 2.3'
end
