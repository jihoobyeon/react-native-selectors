require 'json'
pjson = JSON.parse(File.read('package.json'))

Pod::Spec.new do |s|

  s.name            = "RNCSelector"
  s.version         = pjson["version"]
  s.homepage        = pjson["repository"]
  s.summary         = pjson["description"]
  s.license         = pjson["license"]
  s.author          = pjson["author"]
  s.osx.deployment_target = '10.15'

  s.source          = { :git => "https://github.com/jihoobyeon/react-native-selectors.git", :tag => "v#{s.version}" }
  s.source_files    = 'macos/*.{h,m}'
  s.preserve_paths  = "**/*.ts"

  s.dependency 'React'
end
