#
# Be sure to run `pod lib lint ChatDailyProtobuff.podspec' to ensure this is a
# valid spec and remove all comments before submitting the spec.
#
# Any lines starting with a # are optional, but encouraged
#
# To learn more about a Podspec see http://guides.cocoapods.org/syntax/podspec.html
#

Pod::Spec.new do |s|
  s.name             = "ChatDailyProtobuff"
  s.version          = "0.1.1"
  s.summary          = "日志卡片核心数据结构"
  s.description      = <<-DESC
                      日志卡片核心数据结构,使用Protobuff
                       DESC
  s.homepage         = "http://www.catchitime.com:8081/diffusion/CHATDAILYBIZ/chatdailybiz.git"
  s.license          = 'MIT'
  s.author           = { "stonedong" => "yishuiliunian@gmail.com" }
  s.source           = { :git => "http://www.catchitime.com:8081/diffusion/CHATDAILYBIZ/chatdailybiz.git", :tag => s.version.to_s }
  s.platform     = :ios, '8.0'
  s.source_files = 'Pod/Classes/**/*'
  s.frameworks = 'UIKit'
end
