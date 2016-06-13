BIN += ncrux-mconf
BIN += ncrux-nconf
BIN += ncrux-conf
#BIN += ncrux-kxgettext
#BIN += ncrux-qconf
ifneq ($(shell ls /usr/include/libglade-2.0/glade/glade.h 2>/dev/null),)
BIN += ncrux-gconf
endif

all: $(BIN)

zconf.hash.c: zconf.hash.c_shipped
	cp zconf.hash.c_shipped zconf.hash.c

zconf.lex.c: zconf.lex.c_shipped
	cp zconf.lex.c_shipped zconf.lex.c

zconf.tab.c: zconf.tab.c_shipped zconf.hash.c zconf.lex.c
	cp zconf.tab.c_shipped zconf.tab.c

CFLAGS += $(shell ./lxdialog/check-lxdialog.sh -ccflags) -DLOCALE
lxdialog := lxdialog/checklist.o lxdialog/util.o lxdialog/inputbox.o
lxdialog += lxdialog/textbox.o lxdialog/yesno.o lxdialog/menubox.o

#
# conf
#
ncrux-conf-objs	:= conf.o  zconf.tab.o
ncrux-conf-ldflags = $(shell ./lxdialog/check-lxdialog.sh -ldflags)

ncrux-conf: $(ncrux-conf-objs)
	$(CC) $^ $(conf-ldlfags) -o $@


#
# nconf
#
ncrux-nconf-objs      := ncrux-nconf.o zconf.tab.o ncrux-nconf.gui.o
ncrux-nconf-ldflags  = $(shell \
                    pkg-config --libs menuw panelw ncursesw 2>/dev/null \
                    || pkg-config --libs menu panel ncurses 2>/dev/null \
                    || echo "-lmenu -lpanel -lncurses"  )
ncrux-nconf: $(ncrux-nconf-objs)
	$(CC) $^ $(ncrux-nconf-ldflags) -o $@



#
# ncrux-mconf
#
ncrux-mconf-objs      := ncrux-mconf.o zconf.tab.o $(lxdialog)
ncrux-mconf-ldflags = $(shell ./lxdialog/check-lxdialog.sh -ldflags)

ncrux-mconf: $(ncrux-mconf-objs)
	$(CC) $^ $(ncrux-mconf-ldflags) -o $@



#
# kxgettext
#
ncrux-kxgettext-objs	:= kxgettext.o zconf.tab.o


#
# ncrux-gconf
#
ncrux-gconf-objs	:= ncrux-gconf.o zconf.tab.o

ncrux-gconf-ldflags    = `pkg-config --libs gtk+-2.0 gmodule-2.0 libglade-2.0`
ncrux-gconf-cflags     = `pkg-config --cflags gtk+-2.0 gmodule-2.0 libglade-2.0` \
                          -Wno-missing-prototypes
ncrux-gconf-cflags    += -I/usr/include/libglade-2.0/
ncrux-gconf-ldflags   += -lglade-2.0

ncrux-gconf: $(ncrux-gconf-objs)
	$(CC) $^ $(ncrux-gconf-ldflags) -o $@

ncrux-gconf.o: ncrux-gconf.c
	$(CC) $(CFLAGS) $(ncrux-gconf-cflags) -c $^ -o $@


#
# ncrux-qconf
#
ncrux-qconf-cxxobjs	:= ncrux-qconf.o
ncrux-qconf-objs	:= zconf.tab.o
ncrux-qconf-ldflags     = $(KC_QT_LIBS)
ncrux-qconf-cxxflags   = $(KC_QT_CFLAGS)

ncrux-qconf: $(ncrux-qconf-objs)
	$(CC) $^ $(ncrux-qconf-ldflags) -o $@


LIBPATH=$(DESTDIR)/usr/lib/ncrux/nct
SHPATH=$(DESTDIR)/usr/share/ncrux/nct

install:
	install -m 0755 -d $(LIBPATH) $(SHPATH)
	for i in $(BIN); do install -m 0755 -s -D $$i $(LIBPATH)/$$i; done
	install -m 0644 -D *.glade $(SHPATH)/

uninstall:
	for i in $(BIN); do rm -f $(LIBPATH)/$$i; done
	rm -f $(SHPATH)/*.glade
	rm -rf $(LIBPATH) $(SHPATH)

clean:
	rm -f $(BIN) $(ncrux-conf-objs) $(ncrux-mconf-objs) $(ncrux-nconf-objs)
	rm -f $(ncrux-kxgettext-objs)
	rm -f $(ncrux-qconf-cxxobjs) $(ncrux-qconf-objs) $(ncrux-gconf-objs)
	rm -f zconf.hash.c zconf.lex.c zconf.tab.c


