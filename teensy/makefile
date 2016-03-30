CC=arm-none-eabi-gcc
OBJCOPY=arm-none-eabi-objcopy

CPUFLAGS=-mcpu=cortex-m4 -mabi=aapcs
CFLAGS=
LDFLAGS=Wl,-dTteensy.ld,-L.,--gc-sections -nostdlib
#LDFLAGS+=-Wl,--orphan-handling=place,--fatal-warnings
#LDFLAGS+=-Wl,-M,-Map=$(PRODUCT_NAME).map
LIBS=

PRODUCT_NAME ?= teensy

all: $(OBJECTS)
	$(CC) $(CPUFLAGS) $(LDFLAGS) -o ../$(PRODUCT_NAME).elf $^ $(LIBS)

$(OBJECTS):
