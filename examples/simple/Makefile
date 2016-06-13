#
# Simple demonstration of nCrux Configuration Tool (nct)
#
CONF_FRAGMENT_FILE=frag.nct

all: merge test-all

.nct:
	nct

merge: .nct
	nct merge -f $(CONF_FRAGMENT_FILE)

gen-all: h pl py xml php go

h:
	nct gen -o simple_nct.h

pl:
	nct gen -o simple_nct.pl

py:
	nct gen -o simple_nct.py

xml:
	nct gen -o simple_nct.xml

php:
	nct gen -o simple_nct.php

go:
	-mkdir -p simple_nct
	nct gen -o simple_nct/simple_nct.go

rb:
	nct gen -o simple_nct.rb

js:
	nct gen -o simple_nct.js

test-all: test-h test-pl test-py test-xml test-php test-go test-rb test-js

test-h: h
	$(CC) test.c -o test
	./test

test-pl: pl
	perl test.pl

test-py: py
	python test.py

test-xml: xml
	xmllint simple_nct.xml

test-php: php
	php test.php

test-go: go
	go run test.go

test-rb: rb
	./test.rb

test-js: js
	nodejs test.js


clean:
	rm -f .nct .nct.old
	rm -f simple_nct.h test
	rm -f simple_nct.pl
	rm -f simple_nct.xml
	rm -f simple_nct.py
	rm -rf simple_nct/
	rm -f simple_nct.php
	rm -f simple_nct.py simple_nct.pyc
	rm -f simple_nct.rb
	rm -f simple_nct.js

