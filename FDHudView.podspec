#
#  Be sure to run `pod spec lint FDHudView.podspec' to ensure this is a
#  valid spec and to remove all comments including this before submitting the spec.
#
#  To learn more about Podspec attributes see https://guides.cocoapods.org/syntax/podspec.html
#  To see working Podspecs in the CocoaPods repo see https://github.com/CocoaPods/Specs/
#

Pod::Spec.new do |spec|

s.name         = "FDHudView" //pod名字
s.version      = "1.0.0"//版本号
s.summary      = "Notification HUD for ios."//简介
s.homepage     = "https://github.com/fillinse/FDHudView.git"// 托管地址
s.license      = "MIT"
s.author       = { "Fillinse" => "Fillinse@163.com" }// 个人信息
s.platform     = :ios, "8.0"
s.source       = { :git => "https://github.com/fillinse/FDHudView.git", :tag => "1.0" }// github上地址和tag
s.source_files = "FDHudView/FDHud/*"
s.framework    = "SwiftUI" //依赖库
s.requires_arc = true

end
