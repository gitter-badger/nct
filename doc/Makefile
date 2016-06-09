DOCPATH=$(DESTDIR)/usr/share/doc/nconf
MANPATH=$(DESTDIR)/usr/share/man

all: nconf.html

nconf.1: nconf.1.md
	rst2man $^ $@

nconf.html: nconf.1.md
	rst2html $^ $@

install:
	install -D -m 0644 nconf.1 $(MANPATH)/man1/nconf.1
	install -D -m 0644 nconf.html $(DOCPATH)/nconf.html
	gzip -n -9 -f $(MANPATH)/man1/nconf.1
	install -m 0644 -D ../AUTHORS $(DOCPATH)/AUTHORS
	install -m 0644 -D ../copyright $(DOCPATH)/copyright
	install -m 0644 -D ../README.md $(DOCPATH)/README.md
	install -m 0644 -D ../Changelog $(DOCPATH)/changelog
	gzip -n -9 -f $(DOCPATH)/changelog

uninstall:
	rm -f $(MANPATH)/man1/nconf.1.gz
	rm -f $(MANPATH)/man1/nconf.html
	rm -f $(DOCPATH)/AUTHORS
	rm -f $(DOCPATH)/copyright
	rm -f $(DOCPATH)/README.md
	rm -f $(DOCPATH)/changelog.gz

clean:


