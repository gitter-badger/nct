
CONF_FILE=simple.conf
CONF_FRAGMENT_FILE=fragment.conf
CONF_SRC=Nconfig

menu:
	ncrux-config menu $(CONF_FILE) $(CONF_SRC)

menu-n:
	ncrux-config menu-n $(CONF_FILE)

menu-g:
	ncrux-config menu-g $(CONF_FILE) $(CONF_SRC)

menu-q:
	ncrux-config menu-q $(CONF_FILE) $(CONF_SRC)

merge:
	ncrux-config merge $(CONF_FILE) $(CONF_FRAGMENT_FILE)

PHONY += menu menu-n menu-g menu-q

gen-all: h pl py xml php go

h: $(CONF_FILE)
	ncrux-config gen $(CONF_FILE) simple_conf.h

pl: $(CONF_FILE)
	ncrux-config gen $(CONF_FILE) simple_conf.pl

py: $(CONF_FILE)
	ncrux-config gen $(CONF_FILE) simple_conf.py

xml: $(CONF_FILE)
	ncrux-config gen $(CONF_FILE) simple_conf.xml

php: $(CONF_FILE)
	ncrux-config gen $(CONF_FILE) simple_conf.php

go: $(CONF_FILE)
	-mkdir -p simple_conf
	ncrux-config gen $(CONF_FILE) simple_conf/simple_conf.go

test-all: test-h test-pl test-py test-xml test-php test-go

test-h: h
	$(CC) test.c -o test
	./test

test-pl: pl
	perl test.pl

test-py: py
	python test.py

test-xml: xml
	xmllint simple_conf.xml

test-php: php
	php test.php

test-go: go
	go run test.go

clean:
	rm -f simple.conf simple.conf.old
	rm -f simple_conf.h test
	rm -f simple_conf.pl
	rm -f simple_conf.xml
	rm -f simple_conf.py
	rm -rf simple_conf/
	rm -f simple_conf.php
	rm -f simple_conf.py simple_conf.pyc

