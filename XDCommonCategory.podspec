Pod::Spec.new do |s|
  s.name         = "XDCommonCategory"
  s.version      = "1.1.4"
  s.summary      = "An easy way to use category"
  s.description  = <<-DESC
		   It is marquee view used on IOS,which implement by Objective-C.
                   DESC
  s.homepage     = "https://github.com/xiedong302/XDCommonCategory"
  s.license          = { :type => "MIT", :file => "LICENSE" }
  s.author             = { "xiedong302" => "13545861221@163.com" }
  s.platform = :ios, '7.0'
  s.source       = { :git => "https://github.com/xiedong302/XDCommonCategory.git", :tag => s.version.to_s }
  s.source_files  = 'XDCommonCategory/*'
  s.requires_arc = true
  s.dependency "RegexKitLite"
end
