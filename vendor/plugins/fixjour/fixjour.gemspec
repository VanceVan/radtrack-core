# -*- encoding: utf-8 -*-

Gem::Specification.new do |s|
  s.name = %q{fixjour}
  s.version = "0.5.1"

  s.required_rubygems_version = Gem::Requirement.new(">= 0") if s.respond_to? :required_rubygems_version=
  s.authors = ["Pat Nakajima"]
  s.date = %q{2008-12-29}
  s.email = %q{patnakajima@gmail.com}
  s.files = [
    "lib/core_ext",
    "lib/core_ext/hash.rb",
    "lib/core_ext/object.rb",
    "lib/fixjour",
    "lib/fixjour/builder.rb",
    "lib/fixjour/builders.rb",
    "lib/fixjour/counter.rb",
    "lib/fixjour/definitions.rb",
    "lib/fixjour/deprecation.rb",
    "lib/fixjour/define.rb",
    "lib/fixjour/errors.rb",
    "lib/fixjour/generator.rb",
    "lib/fixjour/merging_proxy.rb",
    "lib/fixjour/overrides_hash.rb",
    "lib/fixjour/redundant_check.rb",
    "lib/fixjour/verify.rb",
    "lib/fixjour.rb"
  ]
  s.has_rdoc = true
  s.homepage = %q{http://github.com/nakajima/fixjour}
  s.require_paths = ["lib"]
  s.rubygems_version = %q{1.3.1}
  s.summary = %q{Object creation methods everyone already has}

  if s.respond_to? :specification_version then
    current_version = Gem::Specification::CURRENT_SPECIFICATION_VERSION
    s.specification_version = 2

    if Gem::Version.new(Gem::RubyGemsVersion) >= Gem::Version.new('1.2.0') then
      s.add_runtime_dependency 'activerecord'
      s.add_development_dependency 'faker'
      s.add_development_dependency 'acts_as_fu'
    else
      s.add_dependency 'activerecord'
    end
  else
    s.add_dependency 'activerecord'
  end
end
