require_relative 'lib/gifs_diana/version'

Gem::Specification.new do |spec|
  spec.name          = "gifs_diana"
  spec.version       = GifsDiana::VERSION
  spec.authors       = ["dgarciaap"]
  spec.email         = ["dgarcia24@ucol.mx"]

  spec.summary       = %q{Gem for getting gifs from animatedgif.me}
  spec.description   = %q{description}
  spec.homepage      = "https://github.com/dgarciaap"
  spec.required_ruby_version = Gem::Requirement.new(">= 2.3.0")

  spec.metadata["allowed_push_host"] = "TODO: Set to 'http://mygemserver.com'"

  spec.metadata["homepage_uri"] = spec.homepage
  spec.metadata["source_code_uri"] = "https://github.com/dgarciaap"
  spec.metadata["changelog_uri"] = "https://github.com/dgarciaap"

  # Specify which files should be added to the gem when it is released.
  # The `git ls-files -z` loads the files in the RubyGem that have been added into git.
  spec.files         = Dir.chdir(File.expand_path('..', __FILE__)) do
    `git ls-files -z`.split("\x0").reject { |f| f.match(%r{^(test|spec|features)/}) }
  end
  spec.bindir        = "exe"
  spec.executables   = spec.files.grep(%r{^exe/}) { |f| File.basename(f) }
  spec.require_paths = ["lib"]

  #Add dependency
  spec.add_dependency "httparty", "0.17.3"
end
