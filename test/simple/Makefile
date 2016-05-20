
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

gen-all: h pl xml

h:
	ncrux-config gen $(CONF_FILE) simple_conf.h

pl:
	ncrux-config gen $(CONF_FILE) simple_conf.pl

xml:
	ncrux-config gen $(CONF_FILE) simple_conf.xml

clean:
	rm -f simple.conf simple.conf.old simple_conf.h
	rm -f simple_conf.pl simple_conf.xml simple_conf.py simple_conf.go

