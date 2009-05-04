# -*- ruby -*-

require 'rubygems'
require 'hoe'
begin
  require './lib/minhash.rb'
rescue LoadError
end

Hoe.new('minhash', MinHash::VERSION || '0.0.0') do |p|
  # p.rubyforge_name = 'minhash' # if different than lowercase project name
  p.developer('Jeff Hodges', 'jeff@somethingsimilar.com')
  p.extra_deps << ['murmur_hash', '1.0.1']
end

# vim: syntax=Ruby
