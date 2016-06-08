
CONF_FILE=simple.nconf
CONF_FRAGMENT_FILE=frag.nconf
NCONF_IN=nconf.in

menu:
	nconf menu $(CONF_FILE) $(NCONF_IN)

menu-n:
	nconf menu-n $(CONF_FILE)

menu-g:
	nconf menu-g $(CONF_FILE) $(NCONF_IN)

menu-q:
	nconf menu-q $(CONF_FILE) $(NCONF_IN)

merge:
	nconf merge $(CONF_FILE) $(CONF_FRAGMENT_FILE)

PHONY += menu menu-n menu-g menu-q

$(CONF_FILE): $(NCONF_IN)
	nconf menu $(CONF_FILE) $(NCONF_IN)

gen-all: h pl py xml php go

h: $(CONF_FILE)
	nconf gen $(CONF_FILE) simple_nconf.h

pl: $(CONF_FILE)
	nconf gen $(CONF_FILE) simple_nconf.pl

py: $(CONF_FILE)
	nconf gen $(CONF_FILE) simple_nconf.py

xml: $(CONF_FILE)
	nconf gen $(CONF_FILE) simple_nconf.xml

php: $(CONF_FILE)
	nconf gen $(CONF_FILE) simple_nconf.php

go: $(CONF_FILE)
	-mkdir -p simple_nconf
	nconf gen $(CONF_FILE) simple_nconf/simple_nconf.go

rb: $(CONF_FILE)
	nconf gen $(CONF_FILE) simple_nconf.rb

js: $(CONF_FILE)
	nconf gen $(CONF_FILE) simple_nconf.js

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
	rm -f simple.nconf simple.nconf.old
	rm -f simple_nconf.h test
	rm -f simple_nconf.pl
	rm -f simple_nconf.xml
	rm -f simple_nconf.py
	rm -rf simple_nconf/
	rm -f simple_nconf.php
	rm -f simple_nconf.py simple_nconf.pyc
	rm -f simple_nconf.rb
	rm -f simple_nconf.js

