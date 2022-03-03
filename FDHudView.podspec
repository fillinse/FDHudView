#
#  Be sure to run `pod spec lint FDHudView.podspec' to ensure this is a
#  valid spec and to remove all comments including this before submitting the spec.
#
#  To learn more about Podspec attributes see https://guides.cocoapods.org/syntax/podspec.html
#  To see working Podspecs in the CocoaPods repo see https://github.com/CocoaPods/Specs/
#

Pod::Spec.new do |s|

s.name         = "FDHudView"
s.version      = "1.0.3"
s.summary      = "simple hud for swiftUI."
s.homepage     = "https://github.com/fillinse/FDHudView"
s.license      = "MIT"
s.author       = { "Fillinse" => "Fillinse@163.com" }
s.platform     = :ios, "13.0"
s.source       = { :git => "https://github.com/fillinse/FDHudView.git", :tag => "1.0.3" }
s.source_files = "FDHudView/FDHud/*"
s.framework    = "SwiftUI"
s.requires_arc = true
s.swift_version = "4.0"

end
