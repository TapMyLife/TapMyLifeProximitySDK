Pod::Spec.new do |s|
#1
  s.platform     = :ios, '8.0'
  s.name             = "TapMyLifeProximitySDK"
  s.summary          = "A SDK for proximity project of TapMyLife S.R.L."
  s.description      = <<-DESC
			A SDK for proximity project of TapMyLife S.R.L. for proximity app
                        DESC
  s.requires_arc = true
#2
  s.version          = "0.1.0"
#3
  s.license          = 'MIT'
#4
  s.author           = { "TapMyLife" => "support@tapmylife.com" }
#5
  s.homepage         = "https://github.com/TapMyLife/TapMyLifeProximitySDK"
#6
  s.source           = { :git => "https://github.com/TapMyLife/TapMyLifeProximitySDK.git", :tag => s.version.to_s }
#7
  #s.frameworks = 'UIKit'
  s.dependency 'IndoorsSDK-iOS', '~> 4.0.0'
#8
  s.source_files = 'TapMyLifeProximitySDK/*.h'

#9
# s.resource_bundles = {
#  'TapMyLifeProximitySDK' => ['TapMyLifeProximitySDK/Assets/*.png']
#  }

end
