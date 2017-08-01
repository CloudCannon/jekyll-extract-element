Gem::Specification.new do |s|
  s.name        = 'jekyll-extract-element'
  s.version     = '0.0.6'
  s.date        = '2017-02-02'
  s.summary     = "Extracts a particular element from HTML content"
  s.description = ""
  s.authors     = ["Mike Neumegen"]
  s.email       = "mike@cloudcannon.com"
  s.files       = ["lib/jekyll-extract-element.rb"]
  s.homepage    =
    'http://rubygems.org/gems/jekyll-extract-element'
  s.license       = 'MIT'

	s.add_dependency "jekyll", "~> 3.3"
  s.add_dependency "nokogiri", "1.6.8"
end