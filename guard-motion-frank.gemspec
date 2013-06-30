# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'guard/motion-frank/version'

Gem::Specification.new do |spec|
  spec.name          = "guard-motion-frank"
  spec.version       = Guard::MotionFrankVersion::VERSION
  spec.authors       = ["Micah Winkelspecht"]
  spec.email         = ["winkelspecht@gmail.com"]
  spec.description   = %q{Guard for motion-frank / RubyMotion / Frank Cucumber testing}
  spec.summary       = %q{guard-motion-frank will automatically run your Frank Cucumber features for iOS when using RubyMotion and the motion-frank gem}
  spec.homepage      = "http://github.com/wink/guard-motion-frank"
  spec.license       = "MIT"

  spec.files         = `git ls-files`.split($/)
  spec.executables   = spec.files.grep(%r{^bin/}) { |f| File.basename(f) }
  spec.test_files    = spec.files.grep(%r{^(test|spec|features)/})
  spec.require_paths = ["lib"]
  
  spec.add_dependency "rake"
  spec.add_dependency "motion-frank"
  spec.add_dependency "guard"
  spec.add_development_dependency "bundler", "~> 1.3"
  spec.add_development_dependency "rake"
end
