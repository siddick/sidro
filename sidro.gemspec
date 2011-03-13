# -*- encoding: utf-8 -*-
$:.push File.expand_path("../lib", __FILE__)
require "sidro/version"

Gem::Specification.new do |s|
  s.name        = "sidro"
  s.version     = Sidro::VERSION
  s.platform    = Gem::Platform::RUBY
  s.authors     = ["siddick"]
  s.email       = ["siddick@gmail.com"]
  s.homepage    = ""
  s.summary     = %q{Default views for inherited resources}
  s.description = %q{It use the formtastic, web-app-theme, jquery, meta_search, meta_where and kaminari}

  s.rubyforge_project = "sidro"

  s.files         = `git ls-files`.split("\n")
  s.test_files    = `git ls-files -- {test,spec,features}/*`.split("\n")
  s.executables   = `git ls-files -- bin/*`.split("\n").map{ |f| File.basename(f) }
  s.require_paths = ["lib"]

  s.add_dependency( 'inherited_resources' )
  s.add_dependency( 'inherited_resources_views' )
  s.add_dependency( 'formtastic' )
  s.add_dependency( 'meta_search' )
  s.add_dependency( 'meta_where' )
  s.add_dependency( 'web-app-theme' )
  s.add_dependency( 'kaminari' )
  s.add_dependency( 'jquery-rails' )

end
