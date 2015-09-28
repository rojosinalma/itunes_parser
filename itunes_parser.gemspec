# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'itunes_parser/version'

Gem::Specification.new do |spec|
  spec.name          = "itunes_parser"
  spec.version       = ItunesParser::VERSION
  spec.authors       = ["Feña Agar"]
  spec.email         = ["ferliagno@gmail.com"]
  spec.licenses      = ['UNLICENSE']
  spec.summary       = %q{iTunes XML parser based on nokogiri-plist}
  spec.description   = %q{A fast and simple iTunes XML parser based on nokogiri-plist}
  spec.homepage      = "https://github.com/elfenars/itunes_parser"

  spec.files         = `git ls-files -z`.split("\x0").reject { |f| f.match(%r{^(test|spec|features)/}) }
  spec.bindir        = "exe"
  spec.executables   = spec.files.grep(%r{^exe/}) { |f| File.basename(f) }
  spec.require_paths = ["lib"]

  spec.required_ruby_version = '>= 2.0.0'

  spec.add_development_dependency "bundler", "~> 1.10"
  spec.add_development_dependency "rake", "~> 10.0"
  spec.add_development_dependency "minitest", "~> 5.8"
  spec.add_development_dependency "minitest-reporters", "~> 1.1"
  spec.add_development_dependency "pry", "~> 0.10"
  spec.add_development_dependency "pry-rescue", "~> 1.4"

  spec.add_runtime_dependency "nokogiri-plist", "~> 0.5"
end
