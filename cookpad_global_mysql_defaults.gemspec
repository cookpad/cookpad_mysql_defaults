$:.push File.expand_path("../lib", __FILE__)

# Maintain your gem's version:
require "cookpad_global_mysql_defaults/version"

# Describe your gem and declare its dependencies:
Gem::Specification.new do |s|
  s.name        = "cookpad_global_mysql_defaults"
  s.version     = CookpadGlobalMysqlDefaults::VERSION
  s.authors     = ["David Stosik", "Cookpad"]
  s.email       = ["david.stosik+git-noreply@gmail.com"]
  s.homepage    = "https://github.com/davidstosik/cookpad-global-mysql-defaults"
  s.summary     = %q{Cookpad Global's MySQL defaults}
  s.description = %q{A gem that forces better MySQL table defaults to support Emojis and indexes on wider columns.}
  s.license     = "MIT"

  s.files = Dir["{app,config,db,lib}/**/*", "MIT-LICENSE", "Rakefile", "README.md"]

  s.add_dependency "rails", ">= 4.2.5"
end
