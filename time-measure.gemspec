require_relative 'lib/time/measure/version'

Gem::Specification.new do |spec|
  spec.name          = 'time-measure'
  spec.version       = Time::Measure::VERSION
  spec.summary       = 'Measure runtime'
  spec.description   = 'Simple measurement of code execution time'
  spec.authors       = ['Andrey Lun\'s']
  spec.email         = ['andxors@gmail.com']
  spec.homepage      = 'https://github.com/andxors/time-measure'
  spec.license       = 'MIT'

  spec.files         = Dir['lib/**/*.rb', 'bin/*', '[A-Z]*']
  spec.require_paths = ['lib']

  spec.required_ruby_version = '~> 2.7'
  spec.add_development_dependency 'bundler',       '~> 2.1'
  spec.add_development_dependency 'bundler-audit', '~> 0.7'
  spec.add_development_dependency 'rspec',         '~> 3.9'
  spec.add_development_dependency 'rubocops',      '~> 0.1'
  spec.add_development_dependency 'simplecov',     '~> 0.18'
end
