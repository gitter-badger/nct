DOCPATH=$(DESTDIR)/usr/share/doc/ncrux-config
MANPATH=$(DESTDIR)/usr/share/man

install:
	install -D -m 0644 ncrux-config.1 $(MANPATH)/man1/ncrux-config.1
	gzip -n -9 -f $(MANPATH)/man1/ncrux-config.1
	install -m 0644 -D ../AUTHORS $(DOCPATH)/AUTHORS
	install -m 0644 -D ../copyright $(DOCPATH)/copyright
	install -m 0644 -D ../README $(DOCPATH)/README
	install -m 0644 -D ../ChangeLog $(DOCPATH)/changelog
	gzip -n -9 $(DOCPATH)/changelog

uninstall:
	rm -f  $(MANPATH)/man1/ncrux-config.1.gz
	rm -f  $(DOCPATH)/AUTHORS
	rm -f  $(DOCPATH)/copyright
	rm -f  $(DOCPATH)/README
	rm -f $(DOCPATH)/changelog.gz

clean:


