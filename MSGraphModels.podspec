

Pod::Spec.new do |s|

  s.name         = "MSGraphModels"
  s.version      = "0.1.0"
  s.summary      = "Microsoft Graph Models to be used with MSGraphCoreSDK."
  s.description  = <<-DESC
			Use these models to convert raw data from MSGraphCoreSDK to models and back.
                   DESC

  s.homepage     = "http://graph.microsoft.io"
  s.license      = { :type => "MIT", :file => "LICENSE" }
  s.author        = 'Microsoft Graph'

	
  s.ios.deployment_target = "9.0"
  s.osx.deployment_target = "10.10"


  # ――― Source Location ―――――――――――――――――――――――――――――――――――――――――――――――――――――――――― #

   s.source       = { :git => "https://github.com/dadheech115/MSGraphModelsPrivate.git", :tag=> s.version }


  # ――― Source Code ―――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――― #

  s.source_files  = "{BaseModels,GeneratedModels}/*.{h,m}"
  s.exclude_files = "MSGraphModelsTests/*"
  s.public_header_files = "{BaseModels,GeneratedModels}/*.h"

end
