# -*- encoding: utf-8 -*-

Gem::Specification.new do |s|
  s.name = %q{test_rails}
  s.version = "1.2.0"

  s.required_rubygems_version = Gem::Requirement.new(">= 0") if s.respond_to? :required_rubygems_version=
  s.authors = ["Ryan Davis", "Eric Hodel", "Dray Lacy"]
  s.date = %q{2009-10-06}
  s.description = %q{Test::Rails helps you build industrial-strength Rails code.}
  s.email = ["ryand-ruby@zenspider.com", "drbrain@segment7.net", "dray@izea.com"]
  s.extra_rdoc_files = ["History.txt", "Manifest.txt", "README.txt"]
  s.files = ["History.txt", "Manifest.txt", "README.txt", "Rakefile", "lib/test/rails.rb", "lib/test/rails/controller_test_case.rb", "lib/test/rails/functional_test_case.rb", "lib/test/rails/helper_test_case.rb", "lib/test/rails/ivar_proxy.rb", "lib/test/rails/pp_html_document.rb", "lib/test/rails/rake_tasks.rb", "lib/test/rails/render_tree.rb", "lib/test/rails/test_case.rb", "lib/test/rails/version.rb", "lib/test/rails/view_test_case.rb", "lib/test/zentest_assertions.rb", "test/test_help.rb", "test/test_rails_controller_test_case.rb", "test/test_rails_helper_test_case.rb", "test/test_rails_view_test_case.rb", "test/test_zentest_assertions.rb", "test_rails.gemspec"]
  s.homepage = %q{http://www.zenspider.com/ZSS/Products/ZenTest/}
  s.rdoc_options = ["--main", "README.txt"]
  s.require_paths = ["lib"]
  s.rubyforge_project = %q{test_rails}
  s.rubygems_version = %q{1.3.5}
  s.summary = %q{Test::Rails helps you build industrial-strength Rails code.}
  s.test_files = ["test/test_help.rb", "test/test_rails_controller_test_case.rb", "test/test_rails_helper_test_case.rb", "test/test_rails_view_test_case.rb", "test/test_zentest_assertions.rb"]

  if s.respond_to? :specification_version then
    current_version = Gem::Specification::CURRENT_SPECIFICATION_VERSION
    s.specification_version = 3

    if Gem::Version.new(Gem::RubyGemsVersion) >= Gem::Version.new('1.2.0') then
      s.add_development_dependency(%q<hoe>, [">= 2.3.3"])
    else
      s.add_dependency(%q<hoe>, [">= 2.3.3"])
    end
  else
    s.add_dependency(%q<hoe>, [">= 2.3.3"])
  end
end
