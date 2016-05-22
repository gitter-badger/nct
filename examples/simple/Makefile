
CONF_FILE=simple.conf
CONF_SRC=Nconfig

menu:
	ncrux-config menu $(CONF_FILE) $(CONF_SRC)

menu-n:
	ncrux-config menu-n $(CONF_FILE)

menu-g:
	ncrux-config menu-g $(CONF_FILE) $(CONF_SRC)

menu-q:
	ncrux-config menu-q $(CONF_FILE) $(CONF_SRC)

PHONY += menu menu-n menu-g menu-q

gen-all: h pl xml php go

h: $(CONF_FILE)
	ncrux-config gen $(CONF_FILE) simple_conf.h

pl: $(CONF_FILE)
	ncrux-config gen $(CONF_FILE) simple_conf.pl

xml: $(CONF_FILE)
	ncrux-config gen $(CONF_FILE) simple_conf.xml

php: $(CONF_FILE)
	ncrux-config gen $(CONF_FILE) simple_conf.php

go: $(CONF_FILE)
	-mkdir -p simple_conf
	ncrux-config gen $(CONF_FILE) simple_conf/simple_conf.go

test-all: test-h test-pl test-xml test-php test-go

test-h: h
	$(CC) test.c -o test
	./test

test-pl: pl
	perl test.pl

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

