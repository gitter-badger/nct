#
# Simple demonstration of nCrux Configuration Tool (nconf)
#
CONF_FRAGMENT_FILE=frag.nconf

merge:
	nconf merge -f $(CONF_FRAGMENT_FILE)

gen-all: h pl py xml php go

h:
	nconf gen -o simple_nconf.h

pl:
	nconf gen -o simple_nconf.pl

py:
	nconf gen -o simple_nconf.py

xml:
	nconf gen -o simple_nconf.xml

php:
	nconf gen -o simple_nconf.php

go:
	-mkdir -p simple_nconf
	nconf gen -o simple_nconf/simple_nconf.go

rb:
	nconf gen -o simple_nconf.rb

js:
	nconf gen -o simple_nconf.js

test-all: test-h test-pl test-py test-xml test-php test-go test-rb test-js

test-h: h
	$(CC) test.c -o test
	./test

test-pl: pl
	perl test.pl

test-py: py
	python test.py

test-xml: xml
	xmllint simple_nconf.xml

test-php: php
	php test.php

test-go: go
	go run test.go

test-rb: rb
	./test.rb

test-js: js
	nodejs test.js


clean:
	rm -f .nconf .nconf.old
	rm -f simple_nconf.h test
	rm -f simple_nconf.pl
	rm -f simple_nconf.xml
	rm -f simple_nconf.py
	rm -rf simple_nconf/
	rm -f simple_nconf.php
	rm -f simple_nconf.py simple_nconf.pyc
	rm -f simple_nconf.rb
	rm -f simple_nconf.js

