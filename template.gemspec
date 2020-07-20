require_relative 'lib/template/version'

Gem::Specification.new do |spec|
  spec.name          = 'template'
  spec.version       = Template::VERSION
  spec.summary       = 'Template for ruby gem'
  spec.description   = 'Template for ruby gem to create new ruby gem'
  spec.authors       = ['Moon DeLorean']
  spec.email         = ['moondelorean@gmail.com']
  spec.homepage      = 'https://github.com/moondelorean/gem-template'
  spec.license       = 'MIT'

  spec.files         = Dir['lib/**/*.rb', 'bin/*', '[A-Z]*']
  spec.require_paths = ['lib']

  spec.required_ruby_version = '~> 2.4'
  spec.add_development_dependency 'bundler',       '~> 2.0'
  spec.add_development_dependency 'bundler-audit', '~> 0.7'
  spec.add_development_dependency 'rspec',         '~> 3.0'
  spec.add_development_dependency 'rubocops',      '~> 0.0'
  spec.add_development_dependency 'simplecov',     '~> 0.1'
end
