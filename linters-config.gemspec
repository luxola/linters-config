
lib = File.expand_path("../lib", __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require "linters_config/version"

Gem::Specification.new do |spec|
  spec.name          = "linters-config"
  spec.version       = LintersConfig::VERSION
  spec.authors       = ["Wang Zhenyan"]
  spec.email         = ["sakura2u@qq.com"]

  spec.summary       = %q{Linter rules and configuration}
  spec.homepage      = "https://github.com/sephora-sea/linters-config"

  # Specify which files should be added to the gem when it is released.
  # The `git ls-files -z` loads the files in the RubyGem that have been added into git.
  spec.files         = Dir.chdir(File.expand_path('..', __FILE__)) do
    `git ls-files -z`.split("\x0").reject { |f| f.match(%r{^(test|spec|features)/}) }
  end
  spec.bindir        = "exe"
  spec.executables   = spec.files.grep(%r{^exe/}) { |f| File.basename(f) }
  spec.require_paths = ["lib"]

  spec.add_dependency "rubocop", "~> 0.79"
  spec.add_dependency "rubocop-performance", "~> 1.5"
  spec.add_dependency "rubocop-rails", "~> 2.4"

  spec.add_development_dependency "bundler", "~> 2.0"
  spec.add_development_dependency "rake", "~> 10.0"
end
