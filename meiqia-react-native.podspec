require 'json'

package = JSON.parse(File.read(File.join(__dir__, 'package.json')))

Pod::Spec.new do |s|
  s.name          = package['name']
  s.version       = package['version']
  s.summary       = package['description']
  s.description   = package['description']
  s.homepage      = package['homepage']
  s.license       = package['license']
  s.author        = package['author']
  s.platform      = :ios, "9.0"
  s.source        = { :git => "https://github.com/Kennytian/meiqia-react-native.git", :tag => "master" }
  s.source_files  = "ios/**/*.{h,m}"
  s.resources     = ['*.bundle', '*.strings']
  s.requires_arc  = true

  s.dependency "React"
  s.dependency 'Meiqia', '3.6.5'

end

