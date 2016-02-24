# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'postal_codes/version'

Gem::Specification.new do |spec|
  spec.name          = "postal_codes"
  spec.version       = PostalCodes::VERSION
  spec.authors       = ["Dinesh Goyal"]
  spec.email         = ["dineshgoyal1669@gmail.com"]
  spec.summary       = %q{Postal Codes search among Countries}
  spec.description   = %q{To find out details like country, state, locality of postal code.}
  spec.homepage      = "https://github.com/dineshgoyal1669/postal_codes"
  spec.license       = "MIT"

  spec.files = Dir['lib/*'] + Dir['lib/data/*'] + Dir['lib/postal_codes/*']
  spec.files += Dir['[A-Z]*'] 
  spec.executables   = spec.files.grep(%r{^bin/}) { |f| File.basename(f) }
  spec.test_files    = spec.files.grep(%r{^(test|spec|features)/})
  spec.require_paths = ["lib"]

  spec.add_development_dependency "bundler", "~> 1.6"
  spec.add_development_dependency "rake"
end
