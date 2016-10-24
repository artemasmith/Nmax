# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'n_max/version'

Gem::Specification.new do |spec|
  spec.name          = "n_max"
  spec.version       = NMax::VERSION
  spec.authors       = ["kaa"]
  spec.email         = ["artemasmith@gmail.com"]

  spec.summary       = %q{ Get N max numbers from input }
  spec.description   = %q{ The gem is a test task for FunBox studio. It allows you to get N max numbers from input data }
  spec.homepage      = "https://github.com/artemasmith/Nmax"
  spec.license       = "MIT"

  spec.files         = `git ls-files -z`.split("\x0").reject { |f| f.match(%r{^(test|spec|features)/}) }
  spec.bindir        = "bin"
  spec.executables   = spec.files.grep(%r{^bin/}) { |f| File.basename(f) }
  spec.require_paths = ["lib"]

  spec.add_development_dependency "bundler", "~> 1.10"
  spec.add_development_dependency "rake", "~> 10.0"
  spec.add_development_dependency "rspec"
  spec.add_development_dependency "travis"
end
