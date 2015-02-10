# -*- encoding: utf-8 -*-
Gem::Specification.new do |gem|
  gem.name        = "ion_in_motion"
  gem.version     = '0.0.5'
  gem.summary     = "Easy use of IonIcons in RubyMotion projects"
  gem.description = "Easily create UILabels, UIImages and UIButtons containing IonIcons in RubyMotion projects."
  gem.files         = `git ls-files`.split("\n")
  gem.test_files    = `git ls-files -- {test,spec,features}/*`.split("\n")
  gem.require_paths = ["lib"]
  gem.homepage    = "http://github.com/Brian-Egan/ion_in_motion"
  gem.authors     = ["Brian Egan"]
  gem.email       = "brian@titlepool.com"
  gem.license     = "MIT"
end