# -*- encoding: utf-8 -*-

Gem::Specification.new do |gem|
  gem.name        = 'esearch'
  gem.version     = '0.2.2'
  gem.authors     = [ 'Markus Schirp' ]
  gem.email       = [ 'mbj@schirp-dso.com' ]
  gem.description = 'Elasticsearch driver for ruby'
  gem.summary     = gem.description
  gem.homepage    = 'https://github.com/mbj/esearch'
  gem.license     = 'MIT'

  gem.require_paths    = [ 'lib' ]
  gem.files            = `git ls-files`.split("\n")
  gem.test_files       = `git ls-files -- spec`.split("\n")
  gem.extra_rdoc_files = %w[TODO]

  gem.add_runtime_dependency('descendants_tracker', '~> 0.0.1')
  gem.add_runtime_dependency('concord',             '~> 0.1.4')
  gem.add_runtime_dependency('faraday',             '~> 0.9.0')
  gem.add_runtime_dependency('adamantium',          '~> 0.2.0')
  gem.add_runtime_dependency('equalizer',           '~> 0.0.9')
  gem.add_runtime_dependency('abstract_type',       '~> 0.0.7')
  gem.add_runtime_dependency('multi_json',          '~> 1.9.2')
  gem.add_runtime_dependency('null_logger',         '~> 0.0.1')
end
