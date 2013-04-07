# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'copyright_presenter/version'

Gem::Specification.new do |spec|
  spec.name          = "copyright_presenter"
  spec.version       = CopyrightPresenter::VERSION
  spec.authors       = ["Jason Harrelson"]
  spec.email         = ["jason@lookforwardenterprises.com"]
  spec.description   = %q{Provides a set of tools to help in presenting copyright text.}
  spec.summary       = %q{Tools for presenting copyright text.}
  spec.homepage      = ""
  spec.license       = "MIT"

  spec.files         = `git ls-files`.split($/)
  spec.executables   = spec.files.grep(%r{^bin/}) { |f| File.basename(f) }
  spec.test_files    = spec.files.grep(%r{^(test|spec|features)/})
  spec.require_paths = ["lib"]

  spec.add_development_dependency "bundler", "~> 1.3"
  spec.add_development_dependency "rake"
  spec.add_development_dependency "rspec"
end
