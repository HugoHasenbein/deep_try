require_relative 'lib/deep_try/version'

Gem::Specification.new do |spec|

  spec.name                          = "deep_try"
  spec.version                       = DeepTry::VERSION
  spec.authors                       = ["Stephan Wenzel"]
  spec.email                         = ["stephan.wenzel@drwpatent.de"]
  spec.license                       = 'GPL-2.0-only'
  
  spec.summary                       = %q{deep_try works like try, but with an arbitrary long list of methods}
  spec.description                   = %q{Use deep_try with any objects like try, but with an arbitrary long list of methods, example: object(:class, :name, :to_s)}
  spec.homepage                      = "https://github.com/HugoHasenbein/deep_try"
  spec.required_ruby_version         = Gem::Requirement.new(">= 2.3.0")
  
  spec.metadata["allowed_push_host"] = "https://github.com/HugoHasenbein/deep_try"
  
  spec.metadata["homepage_uri"]      = spec.homepage
  spec.metadata["source_code_uri"]   = "https://github.com/HugoHasenbein/deep_try"
  spec.metadata["changelog_uri"]     = "https://github.com/HugoHasenbein/deep_try/Changelog.md"
  
  # Specify which files should be added to the gem when it is released.
  # The `git ls-files -z` loads the files in the RubyGem that have been added into git.
  spec.files         = Dir.chdir(File.expand_path('..', __FILE__)) do
    `git ls-files -z`.split("\x0").reject { |f| f.match(%r{^(test|spec|features)/}) }
  end
  
  spec.bindir                        = "exe"
  spec.executables                   = spec.files.grep(%r{^exe/}) { |f| File.basename(f) }
  spec.require_paths                 = ["lib"]
  
end
