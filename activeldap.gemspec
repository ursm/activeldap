# -*- encoding: utf-8 -*-
require File.expand_path('../lib/active_ldap/version', __FILE__)

Gem::Specification.new do |gem|
  gem.name        = 'activeldap'
  gem.version     = ActiveLdap::VERSION
  gem.authors     = ['Will Drewry', 'Kouhei Sutou']
  gem.email       = ['redpig@dataspill.org', 'kou@cozmixng.org']
  gem.homepage    = 'http://ruby-activeldap.rubyforge.org/'
  gem.licenses    = ["Ruby's or GPLv2 or later"]
  gem.summary     = %q{ActiveLdap is a object-oriented API to LDAP}
  gem.description = <<-EOF
'ActiveLdap' is a ruby library which provides a clean
objected oriented interface to the Ruby/LDAP library.  It was inspired
by ActiveRecord. This is not nearly as clean or as flexible as
ActiveRecord, but it is still trivial to define new objects and manipulate
them with minimal difficulty.
  EOF

  gem.files            = `git ls-files`.split('\n')
  gem.test_files       = `git ls-files -- {test,spec,features}/*`.split('\n')
  gem.executables      = `git ls-files -- bin/*`.split('\n').map{ |f| File.basename(f) }
  gem.require_paths    = ['lib']
  gem.extra_rdoc_files = ['LICENSE', 'README.textile', 'TODO']

  gem.rubyforge_project = 'ruby-activeldap'

  gem.add_runtime_dependency 'activemodel', '>= 3.1.0'
  gem.add_runtime_dependency 'locale'
  gem.add_runtime_dependency 'fast_gettext'
  gem.add_runtime_dependency 'gettext_i18n_rails'

  gem.add_development_dependency 'ruby-ldap'
  gem.add_development_dependency 'net-ldap'
  gem.add_development_dependency 'test-unit'
  gem.add_development_dependency 'test-unit-notify'
  gem.add_development_dependency 'yard'
  gem.add_development_dependency 'RedCloth'
end
