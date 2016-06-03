DOCPATH=$(DESTDIR)/usr/share/doc/ncrux-config
MANPATH=$(DESTDIR)/usr/share/man

all: ncrux-config.html

ncrux-config.1: ncrux-config.1.md
	rst2man $^ $@

ncrux-config.html: ncrux-config.1
	man2html ncrux-config.1 > ncrux-config.html

install:
	install -D -m 0644 ncrux-config.1 $(MANPATH)/man1/ncrux-config.1
	install -D -m 0644 ncrux-config.html $(DOCPATH)/ncrux-config.html
	gzip -n -9 -f $(MANPATH)/man1/ncrux-config.1
	install -m 0644 -D ../AUTHORS $(DOCPATH)/AUTHORS
	install -m 0644 -D ../copyright $(DOCPATH)/copyright
	install -m 0644 -D ../README.md $(DOCPATH)/README.md
	install -m 0644 -D ../Changelog $(DOCPATH)/changelog
	gzip -n -9 -f $(DOCPATH)/changelog

uninstall:
	rm -f $(MANPATH)/man1/ncrux-config.1.gz
	rm -f $(MANPATH)/man1/ncrux-config.html
	rm -f $(DOCPATH)/AUTHORS
	rm -f $(DOCPATH)/copyright
	rm -f $(DOCPATH)/README.md
	rm -f $(DOCPATH)/changelog.gz

clean:


