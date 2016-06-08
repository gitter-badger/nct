#!/usr/bin/ruby

require_relative 'simple_nconf.rb'

puts 'MYBOOL = ' + $nconf["MYBOOL"] + "\n";
puts 'MYSTRING = ' + $nconf['MYSTRING'] + "\n";
puts 'MYTRISTATE = ' + $nconf['MYTRISTATE'] + "\n";
puts 'MYINT = ' + "#{$nconf['MYINT']}" + "\n";
puts 'MYHEX = ' + "#{$nconf['MYHEX']}" + "\n";
