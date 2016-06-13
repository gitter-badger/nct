
all: src/helloc_nct.h
	$(MAKE) -C src

.nct: nct.in src/nct.in
	nct menu

src/helloc_nct.h: .nct
	nct gen -o $@

clean:
	$(MAKE) -C src clean
	rm -f .nct .nct.old src/helloc_nct.h

