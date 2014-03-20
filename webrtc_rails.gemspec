$:.push File.expand_path("../lib", __FILE__)

# Maintain your gem's version:
require "webrtc_rails/version"

# Describe your gem and declare its dependencies:
Gem::Specification.new do |s|
  s.name        = "webrtc_rails"
  s.version     = WebrtcRails::VERSION
  s.authors     = ["Gabriel Ortuño"]
  s.email       = ["gaby@aspgems.com"]
  s.homepage    = "http://aspgems.com"
  s.summary     = "Simple WebRTC - Rails Engine."
  s.description = "TODO: Description of WebrtcRails."

  s.files = Dir["{app,config,db,lib,vendor}/**/*", "MIT-LICENSE", "Rakefile", "README.rdoc"]
  s.test_files = Dir["test/**/*"]

  s.add_dependency "rails", "~> 4.0.0"
  s.add_dependency "virtus"
  s.add_dependency 'jquery-rails'

  s.add_development_dependency "sqlite3"
  s.add_development_dependency "thin"
end
