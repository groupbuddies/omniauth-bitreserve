# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'omniauth-bitreserve/version'

Gem::Specification.new do |spec|
  spec.name          = 'omniauth-bitreserve'
  spec.version       = Omniauth::Bitreserve::VERSION
  spec.authors       = ['Miguel Palhas']
  spec.email         = ['mpalhas@groupbuddies.com']
  spec.summary       = 'OAuth2 strategy for the Bitreserve API, by Group Buddies'
  spec.description   = 'OAuth2 strategy for the Bitreserve API, by Group Buddies'
  spec.homepage      = 'https://github.com/groupbuddies/omniauth-Bitreserve'
  spec.license       = 'MIT'

  spec.files         = `git ls-files -z`.split("\x0")
  spec.executables   = spec.files.grep(%r{^bin/}) { |f| File.basename(f) }
  spec.test_files    = spec.files.grep(%r{^(test|spec|features)/})
  spec.require_paths = ['lib']

  spec.add_dependency 'omniauth', '~> 1.2', '>= 1.2.2'
  spec.add_dependency 'omniauth-oauth2', '~> 1.2', '>= 1.2.0'

  spec.add_development_dependency 'bundler', '~> 1.7'
  spec.add_development_dependency 'rake', '~> 10.0'
  spec.add_development_dependency 'rubocop', '~> 0.27.1'
  spec.add_development_dependency 'rspec', '~> 3.1', '~> 3.1.0'
end
