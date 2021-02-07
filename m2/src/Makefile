#******************************************************************************
# Copyright (C) 2017 by Alex Fosdick - University of Colorado
#
# Redistribution, modification or use of this software in source or binary
# forms is permitted as long as the files maintain this copyright. Users are 
# permitted to modify this and use it to learn about the field of embedded
# software. Alex Fosdick and the University of Colorado are not liable for any
# misuse of this material. 
#
#*****************************************************************************

#------------------------------------------------------------------------------
# <Put a Description Here>
# THIS IS A COURSERA PROJECT OF YUSUFSELIMKARATAS
# Use: make [TARGET] [PLATFORM-OVERRIDES]
#
# Build Targets:
#      HOST or MSP432 can be used for PLATFORM option.
#
# Platform Overrides:
#      NO OVERRIDE FOR NOW
#
#------------------------------------------------------------------------------
include sources.mk



# Architectures Specific Flags

# Compiler Flags and Defines

GFLAGS = -Wall -Werror -g -O0 -std=c99 -D$(PLATFORM)
CPPFLAGs = -E
TARGET = c1m2


ifeq ($(PLATFORM), MSP432)
	LINKER_FILE = -T ../msp432p401r.lds
	CPU = cortex-m4
	ARCH = armv7e-m
	FLOAT = hard
	FPU = fpv4-sp-d16
	SPECS = nosys.specs
	CC = arm-none-eabi-gcc
	LD = arm-none-eabi-ld
	CFLAGS =-mcpu=$(CPU) -mthumb -march=$(ARCH) -mfloat-abi=$(FLOAT) -mfpu=$(FPU) --specs=$(SPECS) $(GFLAGS)
	LDFLAGS = -Wl,-Map=$(TARGET).map -T $(LINKER_FILE)
	OBJDUMP = arm-none-eabi-objdump
	SIZE = arm-none-eabi-size
	
	
else
	LINKER_FILE =
	CPU = 
	ARCH =
	FLOAT =  
	SPECS = 
	CC = gcc
	LD = ld
	CFLAGS = $(GFLAGS)
	LDFLAGS = -Wl,-Map=$(TARGET).map
	OBJDUMP = objdump
	SIZE = size	

endif





OBJS = $(SOURCES:.c=.o)
DFILES = $(SOURCES:.c=.d)
ASMFILES = $(SOURCES:.c=.asm)
IFILES = $(SOURCES:.c=.i)


$(TARGET).asm: $(TARGET).out
	$(OBJDUMP) -d $(TARGET).out >> $@
	$(SIZE) -Atd $(TARGET).out
	$(SIZE) $(TARGET).out


%.o : %.c
	$(CC) $(INCLUDES) -c $< $(CFLAGS) -o $@

%.i : %.c
	$(CC) $(INCLUDES) -E $< $(CFLAGS) -o $@

%.asm : %.c
	$(CC) $(INCLUDES) -S $< $(CFLAGS) -o $@

%.d : %.c
	$(CC) $(INCLUDES) -M $< $(CFLAGS) -o $@





.PHONY: clean
clean: 
	rm -f $(OBJS) $(DFILES) $(ASMFILES) $(IFILES) $(TARGET).map $(TARGET).out 
	
.PHONY: compile-all
compile-all:
	$(CC) $(INCLUDES) $(OBJS) -c $(CFLAGS) -o $(TARGET).o
	

.PHONY: build
build: $(TARGET).out $(TARGET).asm
	$(CC) $(OBJS) $(CFLAGS) $(LDFLAGS) -o $@

$(TARGET).out: $(OBJS)
	$(CC) $(OBJS) $(CFLAGS) $(LDFLAGS) -o $@
	

