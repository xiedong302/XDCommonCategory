
Pod::Spec.new do |s|


  s.name         = "XDCommonCategory"
  s.version      = "1.0.0"
  s.summary      = "用在IOS设备上"
  s.description  = <<-DESC
		   It is marquee view used on IOS,which implement by Objective-C.
                   DESC

  s.homepage     = "https://github.com/xiedong302/XDCommonCategory"


  s.license          = { :type => "MIT", :file => "LICENSE" }


  s.author             = { "xiedong302" => "13545861221@163.com" }

  s.platform = :ios, '7.0'

  s.source       = { :git => "https://github.com/xiedong302/XDCommonCategory.git", :tag => s.version.to_s }

  s.source_files  = 'XDCommonCategory/*'

  # ――― Project Linking ―――――――――――――――――――――――――――――――――――――――――――――――――――――――――― #
  #
  #  Link your library with frameworks, or libraries. Libraries do not include
  #  the lib prefix of their name.
  #

  s.framework  = 'UIKit'
  # s.frameworks = 'UIKit'

  # s.library   = "iconv"
  # s.libraries = "iconv", "xml2"




  s.requires_arc = true

  # s.xcconfig = { "HEADER_SEARCH_PATHS" => "$(SDKROOT)/usr/include/libxml2" }
  # s.dependency "JSONKit", "~> 1.4"

end
