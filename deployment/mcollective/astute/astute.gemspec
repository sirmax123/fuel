$:.unshift File.expand_path('lib', File.dirname(__FILE__))
require 'astute/version'

Gem::Specification.new do |s|
  s.name = 'astute'
  s.version = Astute::VERSION

  s.summary = 'Orchestrator for OpenStack deployment'
  s.description = 'Deployment Orchestrator of Puppet via MCollective. Works as a library or from CLI.'
  s.authors = ['Mike Scherbakov']
  s.email   = ['mscherbakov@mirantis.com']

  s.add_dependency 'mcollective-client', '> 2.0.0'
  s.add_dependency 'symboltable', '>= 1.0.2'

  s.files   = Dir.glob("{bin,lib,spec}/**/*")
  s.executables = ['astute', 'astute_run']
  s.require_path = 'lib'
end

