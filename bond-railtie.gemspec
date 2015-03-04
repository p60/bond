# -*- encoding: utf-8 -*-
require File.expand_path('../lib/bond/version', __FILE__)

Gem::Specification.new do |gem|
  gem.author        = 'vyrak.bunleang@gmail.com'
  gem.homepage      = 'https://github.com/p60/bond'
  gem.description   = 'A convenient drop in Railtie for enabling Rack::Transaction'
  gem.summary       = 'A convenient drop in Railtie for enabling Rack::Transaction'

  gem.files         = `git ls-files`.split("\n")
  gem.test_files    = `git ls-files -- {test,spec,features}/*`.split("\n")
  gem.name          = 'bond-railtie'
  gem.require_paths = ["lib"]
  gem.version       = Bond::VERSION

  gem.add_dependency 'rails'
  gem.add_dependency 'rack-transaction'
end
