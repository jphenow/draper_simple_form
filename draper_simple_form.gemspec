# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'draper_simple_form/version'

Gem::Specification.new do |spec|
  spec.name          = "draper_simple_form"
  spec.version       = DraperSimpleForm::VERSION
  spec.authors       = ["Jon Phenow"]
  spec.email         = ["j.phenow@gmail.com"]
  spec.description   = %q{Draper Decoration integrated with SimpleForm}
  spec.summary       = %q{Draper Decoration integrated with SimpleForm}
  spec.homepage      = ""
  spec.license       = "MIT"

  spec.files         = `git ls-files`.split($/)
  spec.executables   = spec.files.grep(%r{^bin/}) { |f| File.basename(f) }
  spec.test_files    = spec.files.grep(%r{^(test|spec|features)/})
  spec.require_paths = ["lib"]

  spec.add_development_dependency "bundler", "~> 1.3"
  spec.add_development_dependency "rake"

  spec.add_dependency "draper", "~> 1.0"
  spec.add_dependency "simple_form", "~> 1.4"
end
