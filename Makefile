
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
	@mkdir -p $(DESTDIR)/usr/share/doc/nconf/
	cp -ar examples $(DESTDIR)/usr/share/doc/nconf/
	@$(MAKE) -C $(DESTDIR)/usr/share/doc/nconf/examples clean

deb: install
	mkdir -p $(DESTDIR)/DEBIAN
	cp package/debian/control $(DESTDIR)/DEBIAN/
	dpkg-deb --build $(DESTDIR) nconf.deb

rpm: install
	rm -rf RPMS
	mkdir -p RPMS
	rpmbuild -bb package/rpm/nconf.spec --buildroot=`readlink -e $(DESTDIR)`
	mv `find RPMS -name \*.rpm` .
	rm -rf RPMS


deb-check:
	lintian nconf.deb

clean:
	$(MAKE) -C src clean
	$(MAKE) -C scripts clean
	$(MAKE) -C doc clean
	rm -f *.rpm *.deb
	rm -rf $(DESTDIR)
