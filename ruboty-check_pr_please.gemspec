# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'ruboty/check_pr_please/version'

Gem::Specification.new do |spec|
  spec.name          = "ruboty-check_pr_please"
  spec.version       = Ruboty::CheckPrPlease::VERSION
  spec.authors       = ["森井ゴンザレス"]
  spec.email         = ["morygonzalez@gmail.com"]
  spec.summary       = %q{Pull Request のチェックをおねだりします。}
  spec.description   = %q{Pull Request のチェックをおねだりします。}
  spec.homepage      = ""
  spec.license       = "MIT"

  spec.files         = `git ls-files -z`.split("\x0")
  spec.executables   = spec.files.grep(%r{^bin/}) { |f| File.basename(f) }
  spec.test_files    = spec.files.grep(%r{^(test|spec|features)/})
  spec.require_paths = ["lib"]

  spec.add_dependency "activesupport"
  spec.add_dependency "ruboty"
  spec.add_dependency "octokit"
  spec.add_development_dependency "bundler", "~> 1.7"
  spec.add_development_dependency "rake", "~> 10.0"
end
