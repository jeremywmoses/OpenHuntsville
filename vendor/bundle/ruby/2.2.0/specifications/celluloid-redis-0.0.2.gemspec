# -*- encoding: utf-8 -*-
# stub: celluloid-redis 0.0.2 ruby lib

Gem::Specification.new do |s|
  s.name = "celluloid-redis"
  s.version = "0.0.2"

  s.required_rubygems_version = Gem::Requirement.new(">= 0") if s.respond_to? :required_rubygems_version=
  s.require_paths = ["lib"]
  s.authors = ["Tony Arcieri"]
  s.date = "2013-04-07"
  s.description = "Celluloid::IO support for the redis-rb library"
  s.email = ["tony.arcieri@gmail.com"]
  s.homepage = "https://github.com/celluloid/celluloid-redis"
  s.licenses = ["MIT"]
  s.rubygems_version = "2.4.5"
  s.summary = "celluloid-redis provides a redis-rb connection class using Celluloid::IO"

  s.installed_by_version = "2.4.5" if s.respond_to? :installed_by_version

  if s.respond_to? :specification_version then
    s.specification_version = 3

    if Gem::Version.new(Gem::VERSION) >= Gem::Version.new('1.2.0') then
      s.add_runtime_dependency(%q<redis>, [">= 0"])
      s.add_runtime_dependency(%q<celluloid-io>, [">= 0.13.0.pre"])
      s.add_development_dependency(%q<bundler>, ["~> 1.3"])
      s.add_development_dependency(%q<rake>, [">= 0"])
      s.add_development_dependency(%q<rspec>, [">= 0"])
      s.add_development_dependency(%q<guard-rspec>, [">= 0"])
    else
      s.add_dependency(%q<redis>, [">= 0"])
      s.add_dependency(%q<celluloid-io>, [">= 0.13.0.pre"])
      s.add_dependency(%q<bundler>, ["~> 1.3"])
      s.add_dependency(%q<rake>, [">= 0"])
      s.add_dependency(%q<rspec>, [">= 0"])
      s.add_dependency(%q<guard-rspec>, [">= 0"])
    end
  else
    s.add_dependency(%q<redis>, [">= 0"])
    s.add_dependency(%q<celluloid-io>, [">= 0.13.0.pre"])
    s.add_dependency(%q<bundler>, ["~> 1.3"])
    s.add_dependency(%q<rake>, [">= 0"])
    s.add_dependency(%q<rspec>, [">= 0"])
    s.add_dependency(%q<guard-rspec>, [">= 0"])
  end
end
