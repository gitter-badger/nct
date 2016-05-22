
DESTDIR=$(shell pwd)/.install
export DESTDIR

all:
	$(MAKE) -C src

install: all
	mkdir -p $(DESTDIR)
	$(MAKE) -C src install
	$(MAKE) -C scripts install
	$(MAKE) -C doc install
	@mkdir -p $(DESTDIR)/usr/share/doc/ncrux-config/
	cp -ar examples $(DESTDIR)/usr/share/doc/ncrux-config/
	@$(MAKE) -C $(DESTDIR)/usr/share/doc/ncrux-config/examples clean

deb: install
	mkdir -p $(DESTDIR)/DEBIAN
	cp package/deb/control $(DESTDIR)/DEBIAN/
	dpkg-deb --build $(DESTDIR) ncrux-config.deb

deb-check:
	lintian ncrux-config.deb

clean:
	$(MAKE) -C src clean
	$(MAKE) -C scripts clean
	$(MAKE) -C doc clean
	rm -f $(DESTDIR)/usr/bin/ncrux-config
	rm -f $(DESTDIR)/usr/share/man/man1/ncrux-config.1.gz
	rm -rf .install
	rm -f ncrux-config.deb
