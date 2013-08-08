# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'zminnotifier/version'

Gem::Specification.new do |spec|
  spec.name          = "zminnotifier"
  spec.version       = Zminnotifier::VERSION
  spec.authors       = ["Shinnosuke TAKEDA"]
  spec.email         = ["shinnosuke@gmail.com"]
  spec.description   = ["0 min alert"]
  spec.summary       = ["0 min alert"]
  spec.homepage      = ""
  spec.license       = "MIT"

  spec.files         = `git ls-files`.split($/)
  spec.executables   = spec.files.grep(%r{^bin/}) { |f| File.basename(f) }
  spec.test_files    = spec.files.grep(%r{^(test|spec|features)/})
  spec.require_paths = ["lib"]

  spec.add_development_dependency "bundler", "~> 1.3"
  spec.add_development_dependency "rake"
  spec.add_dependency "ruby-growl"
end
