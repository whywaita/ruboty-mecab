# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'ruboty/mecab/version'

Gem::Specification.new do |spec|
  spec.name          = "ruboty-mecab"
  spec.version       = Ruboty::Mecab::VERSION
  spec.authors       = ["whywaita"]
  spec.email         = ["whywaita@whywrite.it"]

  spec.summary       = "Ruboty plug-in to replay mecab result" 
  spec.homepage      = "https://github.com/whywaita/ruboty-mecab"

  spec.files         = `git ls-files -z`.split("\x0").reject { |f| f.match(%r{^(test|spec|features)/}) }
  spec.executables   = spec.files.grep(%r{^bin/}) { |f| File.basename(f) }
  spec.require_paths = ["lib"]

  spec.add_runtime_dependency "ruboty"
  spec.add_runtime_dependency "natto"
  spec.add_development_dependency "bundler", "~> 1.12"
  spec.add_development_dependency "rake", "~> 10.0"
end
