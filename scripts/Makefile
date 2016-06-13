
LIBPATH=$(DESTDIR)/usr/lib/ncrux/nct
SHPATH=$(DESTDIR)/usr/share/nct

install:
	install -m 0755 -D nct $(DESTDIR)/usr/bin/nct
	install -D -m 0755 nct-* $(LIBPATH)/

clean:

uninstall:
	rm -f $(DESTDIR)/usr/bin/nct
	rm -f $(SHPATH)/nct-*
	
	
