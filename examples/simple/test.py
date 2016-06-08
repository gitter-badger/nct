#!/usr/bin/python

import simple_nconf

print "MYBOOL = ", simple_nconf.nconf['MYBOOL']
print "MYSTRING = ", simple_nconf.nconf['MYSTRING']
print "MYTRISTATE = ", simple_nconf.nconf['MYTRISTATE']
print "MYINT = ", simple_nconf.nconf['MYINT']
print "MYHEX = ", simple_nconf.nconf['MYHEX']

