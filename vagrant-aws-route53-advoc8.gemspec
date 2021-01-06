$:.unshift File.expand_path('../lib', __FILE__)
require 'vagrant-aws-route53-advoc8/version'

Gem::Specification.new do |s|
  s.name          = 'vagrant-aws-route53-advoc8'
  s.version       = VagrantPlugins::AwsRoute53Advoc8::VERSION
  s.platform      = Gem::Platform::RUBY
  s.license       = 'MIT'
  s.authors       = ['Naohiro Oogatta', 'Rimian Perkins']
  s.email         = 'rimian@advoc8.co'
  s.homepage      = 'https://github.com/advoc8-co/vagrant-aws-route53-advoc8'
  s.summary       = 'Assigns IPs of Vagrant AWS instances to route 53.'
  s.description   = 'A Vagrant plugin assigns the IP of the instance which vagrant-aws provider created to a specific Route 53 record set.'
  s.require_path  = 'lib'
  s.files         = Dir.glob('lib/**/*') + %w(LICENSE README.md)

  s.add_runtime_dependency 'aws-sdk', '>= 3'
end
