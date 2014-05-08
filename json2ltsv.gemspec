# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'json2ltsv/version'

Gem::Specification.new do |spec|
  spec.name          = "json2ltsv"
  spec.version       = Json2ltsv::VERSION
  spec.authors       = ["Masato Ikeda"]
  spec.email         = ["masato.ikeda@gmail.com"]
  spec.summary       = %q{Convert JSON to LTSV line by line.}
  spec.description   = %q{Convert JSON to LTSV line by line.}
  spec.homepage      = "https://github.com/a2ikm/json2ltsv"
  spec.license       = "MIT"

  spec.files         = `git ls-files -z`.split("\x0")
  spec.executables   = spec.files.grep(%r{^bin/}) { |f| File.basename(f) }
  spec.test_files    = spec.files.grep(%r{^(test|spec|features)/})
  spec.require_paths = ["lib"]

  spec.add_runtime_dependency "ltsv"
  spec.add_development_dependency "bundler", "~> 1.6"
  spec.add_development_dependency "rake"
end
