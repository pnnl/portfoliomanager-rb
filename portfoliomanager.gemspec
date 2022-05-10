require_relative 'lib/portfolio_manager/version'

Gem::Specification.new do |spec|
  spec.name          = "portfoliomanager-rb"
  spec.version       = PortfolioManager::VERSION
  spec.authors       = ["Mark Borkum"]
  spec.email         = ["mark.borkum@pnnl.gov"]

  spec.summary       = %q{ENERGY STAR Portfolio Manager - Web Services Clients}
  spec.homepage      = "https://github.com/pnnl/portfoliomanager-rb#readme"
  spec.required_ruby_version = Gem::Requirement.new(">= 2.3.0")

  spec.metadata["homepage_uri"] = spec.homepage
  spec.metadata["source_code_uri"] = "https://github.com/pnnl/portfoliomanager-rb.git"
  spec.metadata["changelog_uri"] = "https://github.com/pnnl/portfoliomanager-rb/blob/master/CHANGELOG.md"

  # Specify which files should be added to the gem when it is released.
  # The `git ls-files -z` loads the files in the RubyGem that have been added into git.
  spec.files         = Dir.chdir(File.expand_path('..', __FILE__)) do
    `git ls-files -z`.split("\x0").reject { |f| f.match(%r{^(test|spec|features)/}) }
  end
  spec.bindir        = "exe"
  spec.executables   = spec.files.grep(%r{^exe/}) { |f| File.basename(f) }
  spec.require_paths = ["lib"]

  spec.add_dependency "logger-application", "~> 0.0.2"
  spec.add_dependency "soap4r-ng", "~> 2.0.4"
end
