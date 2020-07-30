require "json"

package = JSON.parse(File.read(File.join(__dir__, "package.json")))

Pod::Spec.new do |s|
  s.name         = "react-native-boring-text"
  s.version      = package["version"]
  s.summary      = package["description"]
  s.description  = <<-DESC
                  This module enables you to create text components in React Native which don't incur the render cost of <Text/> (which registers touch handlers).
                   DESC
  s.homepage     = "https://github.com/samziz/react-native-boring-text"
  s.license      = "MIT"
  s.authors      = { "Sam Robinson-Adams" => "samwhadams@gmail.com" }
  s.platforms    = { :ios => "9.0" }
  s.source       = { :git => "https://github.com/samziz/react-native-boring-text.git", :tag => "#{s.version}" }

  s.source_files = "ios/**/*.{h,c,m,swift}"
  s.requires_arc = true

  s.dependency "React"
end

