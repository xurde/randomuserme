# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'randomuserme/version'

Gem::Specification.new do |spec|
  spec.name          = "randomuserme"
  spec.version       = RandomUserMe::VERSION
  spec.authors       = ["Jorge Díaz"]
  spec.email         = ["jorgedf@gmail.com"]
  spec.description   = %q{Fetch random users from randomuser.me}
  spec.summary       = %q{Fetch random users from randomuser.me}
  spec.homepage      = "https://github.com/xurde/randomuserme"
  spec.license       = "MIT"

  spec.files         = `git ls-files`.split($/)
  spec.executables   = spec.files.grep(%r{^bin/}) { |f| File.basename(f) }
  spec.test_files    = spec.files.grep(%r{^(test|spec|features)/})
  spec.require_paths = ["lib"]

  spec.add_dependency "httparty", "~> 0.11.0"
  spec.add_dependency "multi_json", "~> 1.8"

  spec.add_development_dependency "bundler", "~> 1.7"
  spec.add_development_dependency "rake", "~> 10.1"
  spec.add_development_dependency "rspec", "~> 2.14"
  spec.add_development_dependency "coveralls"
end
