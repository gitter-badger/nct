
DESTDIR=$(shell pwd)/.install
export DESTDIR

all:
	$(MAKE) -C src
	$(MAKE) -C doc

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
	cp package/debian/control $(DESTDIR)/DEBIAN/
	dpkg-deb --build $(DESTDIR) ncrux-config.deb

rpm: install
	rm -rf RPMS
	mkdir -p RPMS
	rpmbuild -bb package/rpm/ncrux-config.spec --buildroot=`readlink -e $(DESTDIR)`
	mv `find RPMS -name \*.rpm` .
	rm -rf RPMS


deb-check:
	lintian ncrux-config.deb

clean:
	$(MAKE) -C src clean
	$(MAKE) -C scripts clean
	$(MAKE) -C doc clean
	$(MAKE) -C examples clean
	rm -f *.rpm *.deb
	rm -rf $(DESTDIR)
