# -*- encoding: utf-8 -*-
$:.push File.expand_path("../lib", __FILE__)
require "fast_sessions/version"

Gem::Specification.new do |s|
  s.name        = "fast_sessions"
  s.version     = FastSessions::VERSION
  s.platform    = Gem::Platform::RUBY
  s.authors     = ["Alexey Kovyrin","Brian Johnson","Jesus Monzon"]
  s.email       = ["gsusmonzon@yahoo.es"]
  s.homepage    = ""
  s.summary     = %q{replacement for ActiveRecord sessions store}
  s.description = %q{replacement for ActiveRecord sessions store based on a previous work in Scribd.com}

  s.rubyforge_project = "fast_sessions"

  s.files         = `git ls-files`.split("\n")
  s.test_files    = `git ls-files -- {test,spec,features}/*`.split("\n")
  s.executables   = `git ls-files -- bin/*`.split("\n").map{ |f| File.basename(f) }
  s.require_paths = ["lib"]
end
