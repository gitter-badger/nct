
ifneq ($(shell readlink -e ../.nconf),)
include ../.nconf
endif

TARGET=helloc
OBJS=main.o

ifneq ($(NCONF_FEATURE1),)
OBJS += feature1.o
endif

ifneq ($(NCONF_FEATURE2),)
OBJS += feature2.o
endif

$(TARGET): $(OBJS)
	$(CC) -o $@ $^

clean:
	rm -f *.o $(TARGET)
