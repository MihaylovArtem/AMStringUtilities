Pod::Spec.new do |s|

  s.name         = "AMStringUtilities"
  s.version      = "1.0"
  s.summary      = "AMStringUtilities is an extension for String struct in Swift, that gives you some advantages for using phone, e-mail and date strings."
  s.description  = "AMStringUtilities is an extension for String struct in Swift, that gives you some advantages for using phone, e-mail and date strings."
  s.license      = { :type => "MIT", :file => "LICENSE.txt" }
  s.homepage     = "https://github.com/MihaylovArtem/AMImageSequenceView"
  s.author       = { "Mihaylov Artem" => "mihaylovartem74@gmail.com" }
  s.platform     = :ios, :tvos: :macos
  s.source       = { :git => "https://github.com/MihaylovArtem/AMImageSequenceView.git", :tag => s.version.to_s }
  s.source_files = "AMImageSequenceView/*.{swift}"
  s.requires_arc = true

end