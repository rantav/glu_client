# -*- encoding: utf-8 -*-
$:.push File.expand_path("../lib", __FILE__)
require "glu_client/version"

Gem::Specification.new do |s|
  s.name        = "glu_client"
  s.version     = GluClient::VERSION
  s.authors     = ["Ran Tavory"]
  s.email       = ["rantav@gmail.com"]
  s.homepage    = "https://github.com/rantav/glu_client"
  s.summary     = %q{A rest API client for glu}
  s.description = %q{Glu is a deployment automation platform, see https://github.com/linkedin/glu. This gem provides an API to it's console}
  
  s.rubyforge_project = "glu_client"

  s.files         = `git ls-files`.split("\n")
  s.test_files    = `git ls-files -- {test,spec,features}/*`.split("\n")
  s.executables   = `git ls-files -- bin/*`.split("\n").map{ |f| File.basename(f) }
  s.require_paths = ["lib"]

  s.add_development_dependency "rspec"
  s.add_runtime_dependency "rest-client"
end
