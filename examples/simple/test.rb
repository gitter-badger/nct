#!/usr/bin/ruby

require_relative 'simple_conf.rb'

puts 'MYBOOL = ' + $ncrux_config["MYBOOL"] + "\n";
puts 'MYSTRING = ' + $ncrux_config['MYSTRING'] + "\n";
puts 'MYTRISTATE = ' + $ncrux_config['MYTRISTATE'] + "\n";
puts 'MYINT = ' + "#{$ncrux_config['MYINT']}" + "\n";
puts 'MYHEX = ' + "#{$ncrux_config['MYHEX']}" + "\n";
