
LIBPATH=$(DESTDIR)/usr/lib/ncrux/ncrux-config
SHPATH=$(DESTDIR)/usr/share/ncrux-config

install:
	install -m 0755 -D ncrux-config $(DESTDIR)/usr/bin/ncrux-config
	install -D ncrux-config-* $(LIBPATH)/

clean:

uninstall:
	rm -f $(DESTDIR)/usr/bin/ncrux-config
	rm -f $(SHPATH)/ncrux-config-*
	
	
