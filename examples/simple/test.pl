#!/usr/bin/perl

do 'simple_nconf.pl';

print "MYBOOL = $nconf{'MYBOOL'}\n";
print "MYSTRING = $nconf{'MYSTRING'}\n";
print "MYTRISTATE = $nconf{'MYTRISTATE'}\n";
print "MYINT = $nconf{'MYINT'}\n";
print "MYHEX = $nconf{'MYHEX'}\n";


