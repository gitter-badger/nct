
LIBPATH=$(DESTDIR)/usr/lib/ncrux/nconf
SHPATH=$(DESTDIR)/usr/share/nconf

install:
	install -m 0755 -D nconf $(DESTDIR)/usr/bin/nconf
	install -D -m 0755 nconf-* $(LIBPATH)/

clean:

uninstall:
	rm -f $(DESTDIR)/usr/bin/nconf
	rm -f $(SHPATH)/nconf-*
	
	
