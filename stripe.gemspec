$:.unshift(File.join(File.dirname(__FILE__), 'lib'))

require File.expand_path('../lib/stripe/version', __FILE__)

spec = Gem::Specification.new do |s|
  s.name = 'stripe'
  s.version = Stripe::VERSION
  s.summary = 'Ruby bindings for the Stripe API'
  s.description = 'Stripe is the easiest way to accept payments online.  See https://stripe.com for details.'
  s.authors = ['Ross Boucher', 'Greg Brockman']
  s.email = ['boucher@stripe.com', 'gdb@stripe.com']
  s.homepage = 'https://stripe.com/api'
  s.executables = 'stripe-console'
  s.require_paths = %w{lib}

  s.add_dependency('rest-client', '~> 1.4')
  s.add_dependency('multi_json', '~> 1.1')

  s.add_development_dependency('mocha')
  s.add_development_dependency('shoulda')
  s.add_development_dependency('test-unit')
  s.add_development_dependency('rake')

  s.files = %w{
    bin/stripe-console
    lib/stripe.rb
    lib/stripe/version.rb
    lib/data/ca-certificates.crt
  }
end
