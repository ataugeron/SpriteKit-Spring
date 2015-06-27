#
# Be sure to run `pod lib lint SpriteKit-Spring.podspec' to ensure this is a
# valid spec and remove all comments before submitting the spec.
#
# Any lines starting with a # are optional, but encouraged
#
# To learn more about a Podspec see http://guides.cocoapods.org/syntax/podspec.html
#

Pod::Spec.new do |s|
  s.name             = "SpriteKit-Spring"
  s.version          = "1.0.1"
  s.summary          = "SpriteKit API reproducing UIView's spring animations with SKAction"
  s.homepage         = "https://github.com/ataugeron/SpriteKit-Spring"
  s.screenshots     = "https://ataugeron.github.io/SpriteKit-Spring/bounce_1.gif", "https://ataugeron.github.io/SpriteKit-Spring/bounce_2.gif", "https://ataugeron.github.io/SpriteKit-Spring/bounce_3.gif"
  s.license          = 'Apache 2'
  s.author           = { "Alexis Taugeron" => "alexis.taugeron@gmail.com" }
  s.source           = { :git => "https://github.com/ataugeron/SpriteKit-Spring.git", :tag => s.version.to_s }
  s.social_media_url = 'https://twitter.com/ataugeron'

  s.platform     = :ios, '8.0'
  s.requires_arc = true

  s.source_files = 'SpriteKit-Spring.swift'
end
