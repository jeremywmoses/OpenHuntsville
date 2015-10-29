# -*- encoding: utf-8 -*-
# stub: websocket_parser 1.0.0 ruby lib

Gem::Specification.new do |s|
  s.name = "websocket_parser"
  s.version = "1.0.0"

  s.required_rubygems_version = Gem::Requirement.new(">= 0") if s.respond_to? :required_rubygems_version=
  s.require_paths = ["lib"]
  s.authors = ["Alberto Fernandez-Capel"]
  s.date = "2015-01-25"
  s.description = "WebsocketParser is a RFC6455 compliant parser for websocket messages"
  s.email = ["afcapel@gmail.com"]
  s.homepage = "http://github.com/afcapel/websocket_parser"
  s.rubygems_version = "2.4.5"
  s.summary = "Parse websockets messages in Ruby"

  s.installed_by_version = "2.4.5" if s.respond_to? :installed_by_version

  if s.respond_to? :specification_version then
    s.specification_version = 4

    if Gem::Version.new(Gem::VERSION) >= Gem::Version.new('1.2.0') then
      s.add_development_dependency(%q<rake>, [">= 0"])
      s.add_development_dependency(%q<rspec>, [">= 0"])
    else
      s.add_dependency(%q<rake>, [">= 0"])
      s.add_dependency(%q<rspec>, [">= 0"])
    end
  else
    s.add_dependency(%q<rake>, [">= 0"])
    s.add_dependency(%q<rspec>, [">= 0"])
  end
end
