# frozen_string_literal: true

Gem::Specification.new do |s|
  s.name        = "jekyll-extract-element"
  s.version     = "0.0.8"
  s.date        = "2017-02-02"
  s.summary     = "Extracts a particular element from HTML content"
  s.description = ""
  s.authors     = ["Mike Neumegen"]
  s.email       = "mike@cloudcannon.com"
  s.files       = ["lib/jekyll-extract-element.rb"]
  s.homepage    =
    "http://rubygems.org/gems/jekyll-extract-element"
  s.license = "MIT"

  s.add_dependency "jekyll", ">= 3.0"
  s.add_dependency "nokogiri", ">= 1.11.4"

  s.add_development_dependency "bundler", "~> 2.1"
  s.add_development_dependency "rake", ">= 12.3.3"
  s.add_development_dependency "rubocop-jekyll", "~> 0.5.1"
end
