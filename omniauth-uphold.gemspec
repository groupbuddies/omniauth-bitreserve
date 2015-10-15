# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'omniauth-uphold/version'

Gem::Specification.new do |spec|
  spec.name          = 'omniauth-uphold'
  spec.version       = Omniauth::Uphold::VERSION
  spec.authors       = ['Miguel Palhas']
  spec.email         = ['miguel@subvisual.co']
  spec.summary       = 'OAuth2 strategy for the Uphold API, by Subvisual'
  spec.description   = 'OAuth2 strategy for the Uphold API, by Subvisual'
  spec.homepage      = 'https://github.com/subvisual/omniauth-uphold'
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
