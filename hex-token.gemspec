# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'hex/token/version'

Gem::Specification.new do |spec|
  spec.name          = "hex-token"
  spec.version       = Hex::Token::VERSION
  spec.authors       = ["Ivan Rostovsky"]
  spec.email         = ["ivan.rostovsky@gmail.com"]

  spec.summary       = %q{Generate hex digit token based on the current time}
  spec.homepage      = "https://github.com/Irostovsky/hex-token"
  spec.license       = "MIT"

  spec.files         = `git ls-files -z`.split("\x0").reject do |f|
    f.match(%r{^(test|spec|features)/})
  end
  spec.bindir        = "exe"
  spec.executables   = spec.files.grep(%r{^exe/}) { |f| File.basename(f) }
  spec.require_paths = ["lib"]

  spec.add_development_dependency "bundler", "~> 1.14"
  spec.add_development_dependency "rake", "~> 10.0"
  spec.add_development_dependency "rspec", "~> 3.0"
end
