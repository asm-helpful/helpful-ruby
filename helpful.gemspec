# -*- encoding: utf-8 -*-

Gem::Specification.new do |gem|
  gem.name        = "helpful"
  gem.version     = "0.1.0"
  gem.description = "Official Helpful API library client for ruby"
  gem.summary     = "Official Helpful API library client for ruby"

  gem.author   = "Pavan Kumar Sunkara"
  gem.email    = "pavan.sss1991@gmail.com"
  gem.homepage = "https://helpful.io"
  gem.license  = "MIT"

  gem.require_paths = ['lib']

  gem.files = Dir["lib/**/*"]

  gem.add_dependency "faraday", ">= 0.9.0"
  gem.add_dependency "json", ">= 1.7.7"
end
