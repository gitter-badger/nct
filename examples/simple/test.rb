#!/usr/bin/ruby

require_relative 'simple_nct.rb'

puts 'MYBOOL = ' + $nct["MYBOOL"] + "\n";
puts 'MYSTRING = ' + $nct['MYSTRING'] + "\n";
puts 'MYTRISTATE = ' + $nct['MYTRISTATE'] + "\n";
puts 'MYINT = ' + "#{$nct['MYINT']}" + "\n";
puts 'MYHEX = ' + "#{$nct['MYHEX']}" + "\n";
