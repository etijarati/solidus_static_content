
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'solidus_static_content/version'

Gem::Specification.new do |spec|
  spec.name          = 'solidus_static_content'
  spec.version       = SolidusStaticContent::VERSION
  spec.authors       = ['Peter Berkenbosch', 'Roman Smirnov']
  spec.email         = 'peter@pero-ict.nl'

  spec.summary       = %q{Extension to manage the static pages for your Solidus store.}
  spec.description   = %q{Manage the static pages of your Solidus store or replace existing pages with a static version}
  spec.homepage      = 'https://github.com/solidusio-contrib/solidus_static_content#readme'
  spec.license       = 'BSD-3'

  if spec.respond_to?(:metadata)
    spec.metadata['homepage_uri'] = spec.homepage
    spec.metadata['source_code_uri'] = spec.homepage
    spec.metadata['changelog_uri'] = 'https://github.com/solidusio-contrib/solidus_static_content/releases'
  end

  # Specify which files should be added to the gem when it is released.
  # The `git ls-files -z` loads the files in the RubyGem that have been added into git.
  spec.files         = Dir.chdir(File.expand_path('..', __FILE__)) do
    `git ls-files -z`.split("\x0").reject { |f| f.match(%r{^(test|spec|features)/}) }
  end
  spec.bindir        = 'exe'
  spec.executables   = spec.files.grep(%r{^exe/}) { |f| File.basename(f) }
  spec.require_paths = ['lib']

  spec.add_dependency 'solidus', ['>= 2.3', '< 3']
  spec.add_dependency 'solidus_support'
  spec.add_dependency 'deface', '~> 1.0'

  spec.add_development_dependency 'pry-rails'
  spec.add_development_dependency 'rspec_junit_formatter'
  spec.add_development_dependency 'solidus_extension_dev_tools'
end
