
all: src/helloc_nconf.h
	$(MAKE) -C src

.nconf: nconf.in src/nconf.in
	nconf menu

src/helloc_nconf.h: .nconf
	nconf gen -o $@

clean:
	$(MAKE) -C src clean
	rm -f .nconf .nconf.old src/helloc_nconf.h

