# Compiler
CC = gcc

# Directories for includes, source, and object files
IDIR = include
SDIR = src
ODIR = obj

# Other random compiling things
DEBUG_FLAGS = -g -Wall
CFLAGS = $(DEBUG_FLAGS) -O0 -I$(IDIR)
LDFLAGS = -lm

# Executable name
EXE 	= chip8_emulator
EXEOBJ 	= $(ODIR)/$(EXE).o

all: bootstrap $(EXE)

# build executable
$(EXE): $(ODIR) $(EXEOBJ) $(IDIR)/*.h
	@echo "LD $@"
	@ $(CC) $(CFLAGS) -o $@ $(ODIR) $(ODIR)/$@.o $(LDFLAGS)

# build object files
$(ODIR)/%.o: $(SDIR)/%.c
	@echo "C $@"
	@ ${CC} ${CFLAGS} -c $< -o $@

bootstrap:
	@mkdir -p $(ODIR)

clean:
	rm -f $(EXE)
	rm -f $(ODIR)/*.o 
	rmdir $(ODIR)
