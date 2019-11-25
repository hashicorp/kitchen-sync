# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'kitchen-sync/version'

Gem::Specification.new do |spec|
  spec.name          = 'kitchen-sync'
  spec.version       = KitchenSync::VERSION
  spec.authors       = ['Dan Slimmon']
  spec.email         = ['dslimmon@hashicorp.com']
  spec.description   = %q{Hashicorp-forked kitchen-sync transport for kitchen}
  spec.summary       = spec.description
  spec.homepage      = 'https://github.com/hashicorp/kitchen-sync'
  spec.license       = 'Apache 2.0'

  spec.files         = `git ls-files`.split($/)
  spec.executables   = []
  spec.test_files    = spec.files.grep(%r{^(test|spec|features)/})
  spec.require_paths = ['lib']

  spec.add_dependency 'test-kitchen', '>= 1.0.0'
  spec.add_dependency 'net-sftp'

  spec.add_development_dependency 'bundler'
  spec.add_development_dependency 'rake'
end
