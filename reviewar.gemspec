# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'reviewar/version'

Gem::Specification.new do |spec|
  spec.name          = "reviewar"
  spec.version       = Reviewar::VERSION
  spec.authors       = ["Ryosuke Shinozaki"]
  spec.email         = ["ryshinoz@gmail.com"]
  spec.summary       = %q{aaa}
  spec.description   = %q{bbb}
  spec.homepage      = ""
  spec.license       = "MIT"

  spec.files         = `git ls-files -z`.split("\x0")
  spec.executables   = spec.files.grep(%r{^bin/}) { |f| File.basename(f) }
  spec.test_files    = spec.files.grep(%r{^(test|spec|features)/})
  spec.require_paths = ["lib"]

  spec.add_development_dependency "bundler", "~> 1.7"
  spec.add_development_dependency "rake", "~> 10.0"

  spec.add_dependency "activesupport", ">= 3.0.0"
  spec.add_dependency "actionpack"
  spec.add_dependency "activerecord"
  spec.add_dependency "rspec"
end
