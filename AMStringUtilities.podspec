Pod::Spec.new do |s|

  s.name          = "AMStringUtilities"
  s.version       = "1.0"
  s.pod_target_xcconfig = { 'SWIFT_VERSION' => '3.0' }
  s.ios.deployment_target = '8.0'
  s.summary       = "AMStringUtilities is an extension for String struct in Swift"
  s.description   = "AMStringUtilities is an extension for String struct in Swift, that gives you some advantages for using phone, e-mail and date strings."
  s.license       = { :type => "MIT", :file => "LICENSE" }
  s.homepage      = "https://github.com/MihaylovArtem/AMStringUtilities"
  s.author        = { "Mihaylov Artem" => "mihaylovartem74@gmail.com" }
  s.source        = { :git => "https://github.com/MihaylovArtem/AMStringUtilities.git", :tag => s.version.to_s }
  s.source_files  = "AMStringUtilities/*.{swift}"
  s.requires_arc  = true

end