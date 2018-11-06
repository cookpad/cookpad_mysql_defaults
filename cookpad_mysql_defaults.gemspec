$:.push File.expand_path("../lib", __FILE__)

# Maintain your gem's version:
require "cookpad_mysql_defaults/version"

# Describe your gem and declare its dependencies:
Gem::Specification.new do |s|
  s.name        = "cookpad_mysql_defaults"
  s.version     = CookpadMysqlDefaults::VERSION
  s.authors     = ["David Stosik", "Cookpad"]
  s.email       = ["david.stosik+git-noreply@gmail.com"]
  s.homepage    = "https://github.com/cookpad/cookpad-mysql-defaults"
  s.summary     = %q{Cookpad Global's MySQL defaults}
  s.description = %q{A gem that forces better MySQL table defaults to support Emojis and indexes on wider columns.}
  s.license     = "MIT"

  s.files = Dir["{app,config,db,lib}/**/*", "MIT-LICENSE", "Rakefile", "README.md"]

  s.add_dependency "activerecord", ">= 4.2.5"
  s.add_dependency "activesupport", ">= 4.2.5"
end
