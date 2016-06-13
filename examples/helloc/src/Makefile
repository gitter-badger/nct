
ifneq ($(shell readlink -e ../.nct),)
include ../.nct
endif

TARGET=helloc
OBJS=main.o

ifneq ($(NCT_FEATURE1),)
OBJS += feature1.o
endif

ifneq ($(NCT_FEATURE2),)
OBJS += feature2.o
endif

$(TARGET): $(OBJS)
	$(CC) -o $@ $^

clean:
	rm -f *.o $(TARGET)
