
Pod::Spec.new do |spec|
  spec.name         = "PayskyPayButtonSDK"
  spec.version      = "1.0.2"
  spec.summary      = "A short description of PayskyPayButtonSDK.podspec."
  spec.description  = "A short description of PayskyPayButtonSDK.podspec."
  spec.homepage     = "https://github.com/omareltahanPaySky/PayskyPayButtonSDK"
  spec.license      = "MIT"
  spec.author             = { "omar eltahan" => "Omar.eltahan@paysky.io" }
  spec.source       = { :git => "https://github.com/omareltahanPaySky/PayskyPayButtonSDK.git", :tag => "1.0.2" }
  spec.source_files  = "PayButton/**/*.{h,m,swift,xcdatamodeld}"
  
spec.xcconfig = { "APPLY_RULES_IN_COPY_FILES" => "YES", "STRINGS_FILE_OUTPUT_ENCODING" => "binary" ,"OTHER_LDFLAGS" => "-lz" }
          # 'SWIFT_OBJC_BRIDGING_HEADER' => 'PayButton/PayButton-Bridging-Header.h'}
           spec.public_header_files = 'PayButton/PayButton-Bridging-Header.h'

          spec.exclude_files = [
   'PayButton/TestApi/Base.lproj/LaunchScreen.storyboard',
   'PayButton/TestApi/Base.lproj/Main.storyboard',
   'PayButton/TestApi/ViewController.swift',
   'PayButton/Info.plist',
     'PayButton/AppDelegate.swift',
   'PayButton/Assets.xcassets/AppIcon.appiconset/**']
    spec.platform = :osx, '10.7'
    spec.platform = :ios, '8.0'
    spec.ios.deployment_target = '11.0'

  spec.frameworks = 'UIKit'
  spec.dependency 'Alamofire', '~> 5.0.0-rc.3'
  spec.dependency 'EVReflection', '~> 5.10.1'
  spec.dependency 'PayCardsRecognizer', '~> 1.1.7'
  spec.dependency 'PopupDialog', '~> 1.1.1'


  spec.static_framework = true
  spec.requires_arc = true
  spec.source_files = "PayButton/**/*.{swift,h,m}"
  spec.resources = "PayButton/**/*.{png,jpeg,jpg,storyboard,xib,xcassets,lproj,json,plist,strings}"
  spec.resource_bundle = { "PayButton" => ["PayButton/Strings/*.lproj/*.strings"] }

end
