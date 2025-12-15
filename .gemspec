# frozen_string_literal: true

require_relative "theme_version"

Gem::Specification.new do |spec|
  spec.name          = "hwshqtb.github.io"
  spec.version       = 0.1
  spec.authors       = ["hwshqtb"]
  spec.email         = ["1353736321@qq.com"]

  spec.summary       = "hwshqtb"
  spec.homepage      = "https://github.com/hwshqtb/hwshqtb.github.io"
  spec.license       = "MIT"

  spec.files = `git ls-files -z`.split("\x0").select do |f|
    f.match(%r!^(assets|_(includes|layouts|sass)/|(LICENSE|README)((\.(txt|md|markdown)|$)))!i)
  end

  spec.required_ruby_version = ">= 2.7.0"

  spec.add_runtime_dependency "jekyll", ">= 4", "< 5.0"
  spec.add_runtime_dependency "jekyll-feed", "~> 0.9"
  spec.add_runtime_dependency "jekyll-seo-tag", "~> 2.1"
end
