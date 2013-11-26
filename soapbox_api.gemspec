# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'soapbox_api/version'

Gem::Specification.new do |spec|
  spec.name          = "soapbox_api"
  spec.version       = SoapboxApi::VERSION
  spec.authors       = ["Sahil"]
  spec.email         = ["sahil@vinsol.com"]
  spec.description   = %q{Provides an api interface for soapBox app}
  spec.summary       = %q{A user can fetch/create posts from a 3rd party application using this API}
  spec.homepage      = ""
  spec.license       = "MIT"

  spec.files         = `git ls-files`.split($/)
  spec.executables   = spec.files.grep(%r{^bin/}) { |f| File.basename(f) }
  spec.test_files    = spec.files.grep(%r{^(test|spec|features)/})
  spec.require_paths = ["lib"]

  spec.add_development_dependency "bundler", "~> 1.3"
  spec.add_development_dependency "rake"
  spec.add_development_dependency "nokogiri"
end
