lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'corpus-processor/version'

Gem::Specification.new do |spec|
  spec.name          = 'corpus-processor'
  spec.version       = CorpusProcessor::VERSION
  spec.authors       = ['Das Dad']
  spec.email         = ['dev@dasdad.com.br']
  spec.description   = 'Process linguistic corpus'
  spec.summary       = 'Handle linguistic corpus and convert it to use NLP ' \
                       'tools'
  spec.homepage      = 'https://github.com/dasdad/corpus-processor'
  spec.license       = 'MIT'

  spec.files         = `git ls-files`.split($/)
  spec.executables   = spec.files.grep(%r{^bin/}) { |f| File.basename(f) }
  spec.test_files    = spec.files.grep(%r{^(test|spec|features)/})
  spec.require_paths = ['lib']

  spec.required_ruby_version = Gem::Requirement.new('>= 2.0.0')

  spec.add_dependency 'thor'
  spec.add_dependency 'nokogiri'

  spec.add_development_dependency 'bundler', '~> 1.3'
  spec.add_development_dependency 'rspec', '2.14.0.rc1'
  spec.add_development_dependency 'pry-nav'
  spec.add_development_dependency 'coveralls'
end
