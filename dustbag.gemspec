# -*- encoding: utf-8 -*-
$LOAD_PATH.push File.expand_path('../lib', __FILE__)
require 'dustbag/version'

Gem::Specification.new do |gem|
  gem.name        = 'dustbag'
  gem.version     = Dustbag::VERSION
  gem.platform    = Gem::Platform::RUBY
  gem.authors     = ['Herman Moreno']
  gem.email       = ['inher88@gmail.com']
  gem.homepage    = 'https://github.com/supherman/dustbag'
  gem.description = 'A set of response parsers for Vacuum (a wrapper of the Amazon Product Advertising API)'
  gem.summary     = 'Amazon Product Advertising API response parsers in Ruby'
  gem.license     = 'MIT'

  gem.files         = Dir.glob('lib/**/*') + %w(LICENSE README.md)
  gem.test_files    = Dir.glob('spec/**/*')
  gem.require_paths = ['lib']

  gem.add_dependency 'vacuum'
  gem.add_dependency 'ox'

  gem.add_development_dependency 'pry'
  gem.add_development_dependency 'rspec'
  gem.add_development_dependency 'rake'

  gem.required_ruby_version = '>= 1.9'
end
