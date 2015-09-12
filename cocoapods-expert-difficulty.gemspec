# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'cocoapods-expert-difficulty/gem_version.rb'

Gem::Specification.new do |spec|
  spec.name          = 'cocoapods-expert-difficulty'
  spec.version       = CocoapodsExpertDifficulty::VERSION
  spec.authors       = ['Orta Therox']
  spec.email         = ['orta.therox@gmail.com']
  spec.description   = %q{Ignore platforms in other people's Podspecs.}
  spec.summary       = %q{Avoid making a lot of PRs adding a single platform to pods.}
  spec.homepage      = 'https://github.com/orta/cocoapods-expert-difficulty'
  spec.license       = 'MIT'

  spec.files         = `git ls-files`.split($/)
  spec.executables   = spec.files.grep(%r{^bin/}) { |f| File.basename(f) }
  spec.test_files    = spec.files.grep(%r{^(test|spec|features)/})
  spec.require_paths = ['lib']

  spec.add_development_dependency 'bundler', '~> 1.3'
  spec.add_development_dependency 'rake'
end
