# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'dotdiff/version'

Gem::Specification.new do |spec|
  spec.name          = "dotdiff"
  spec.version       = DotDiff::VERSION
  spec.authors       = ["Jon Normington"]
  spec.email         = ["jnormington@users.noreply.github.com"]

  spec.summary       = "Preceptual diff wrapper for capybara and rspec image regression specs"
  spec.description   = [spec.summary, "which is great for graphs and charts where checking"\
                                      "the DOM is either impossible to not worth it."].join(' ')
  spec.homepage      = "https://github.com/jnormington/dotdiff"
  spec.license       = "MIT"

  spec.files         = `git ls-files -z`.split("\x0").reject { |f| f.match(%r{^(test|spec|features)/}) }
  spec.bindir        = "exe"
  spec.executables   = spec.files.grep(%r{^exe/}) { |f| File.basename(f) }
  spec.require_paths = ["lib"]

  if RUBY_PLATFORM == 'java'
    spec.add_runtime_dependency "rmagick4j", '~> 0.4.0'
  else
    spec.add_runtime_dependency "rmagick", '~> 2.15'
  end

  spec.add_development_dependency "bundler", "~> 1.11"
  spec.add_development_dependency "rake", "~> 10.0"
  spec.add_development_dependency "rspec", "~> 3.0"
  spec.add_development_dependency "capybara", "~> 2.6"
end
