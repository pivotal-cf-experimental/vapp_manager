# coding: utf-8
lib = File.join(__dir__, 'lib')
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'vapp_manager/version'

Gem::Specification.new do |spec|
  spec.name          = 'vapp_manager'
  spec.version       = VappManager::VERSION
  spec.authors       = ['']
  spec.summary       = %q{CLI to deploy/destroy a VAPP on vCloud Director}

  spec.license       = 'MIT'

  spec.files         = `git ls-files -z`.split("\x0")
  spec.executables   = spec.files.grep(%r{^bin/}) { |f| File.basename(f) }
  spec.test_files    = spec.files.grep(%r{^(test|spec|features)/})
  spec.require_paths = ['lib']

  spec.add_dependency 'ruby_vcloud_sdk', '~> 0.7.0'

  spec.add_development_dependency 'rake', '~> 10.0'
  spec.add_development_dependency 'rspec', '~> 3.0'
end
