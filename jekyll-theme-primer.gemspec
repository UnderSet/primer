# frozen_string_literal: true

Gem::Specification.new do |s|
  s.name          = "underset-jekyll-primer"
  s.version       = "0.6.1"
  s.authors       = ["GitHub, Inc.", "UnderSet"]
  s.email         = ["unsetvariable@proton.me"]
  s.homepage      = "https://github.com/UnderSet/primer"
  s.summary       = "Heavily opinionated fork of the Primer theme for Jekyll."

  s.files         = `git ls-files -z`.split("\x0").select do |f|
    f.match(%r{^(assets|_(includes|layouts|sass)/|(LICENSE|README)((\.(txt|md)|$)))}i)
  end

  s.platform      = Gem::Platform::RUBY
  s.license       = "MIT"

  s.required_ruby_version = ">= 2.4.0"

  s.add_dependency "jekyll", "> 3.5", "< 5.0"
  s.add_development_dependency "html-proofer", "~> 3.0"
  s.add_development_dependency "rubocop-github", "~> 0.16"
  s.add_development_dependency "w3c_validators", "~> 1.3"
end
