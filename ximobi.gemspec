# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'ximobi/version'

Gem::Specification.new do |spec|
  spec.name          = "ximobi"
  spec.version       = Ximobi::VERSION
  spec.authors       = ["Wylie Thomas"]
  spec.email         = ["wylie@wyliethomas.com"]
  spec.description   = %q{Create time and expense entries}
  spec.summary       = %q{A command line tool to create time and expense entries}
  spec.homepage      = ""
  spec.license       = "MIT"

  spec.files         = `git ls-files`.split($/)
  spec.executables   = ["ximobi"]
  spec.test_files    = spec.files.grep(%r{^(test|spec|features)/})
  spec.require_paths = ["lib"]

  spec.add_development_dependency "bundler", "~> 1.3"
  spec.add_development_dependency "rake"
end
