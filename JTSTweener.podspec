#
# Be sure to run `pod lib lint JTSTweener.podspec' to ensure this is a
# valid spec and remove all comments before submitting the spec.
#
# Any lines starting with a # are optional, but encouraged
#
# To learn more about a Podspec see http://guides.cocoapods.org/syntax/podspec.html
#

Pod::Spec.new do |s|
  s.name             = "JTSTweener"
  s.version          = "0.3.0"
  s.summary          = "A block-based tweening engine inspired by Greensock's TweenLite."
  s.homepage         = "https://github.com/JoshuaSullivan/JTSTweenerPod"
  s.license          = 'MIT'
  s.author           = { "Joshua Sullivan" => "joshuasullivan@gmail.com" }
  s.source           = { :git => "https://github.com/JoshuaSullivan/JTSTweenerPod.git", :tag => s.version.to_s }
  # s.social_media_url = 'https://twitter.com/ChibiJosh'

  s.platform     = :ios, '7.0'
  s.requires_arc = true

  s.source_files = 'Pod/Classes/**/*'
  s.resource_bundles = {
    'JTSTweener' => ['Pod/Assets/*.png']
  }

  s.frameworks = 'UIKit', 'QuartzCore'
end
