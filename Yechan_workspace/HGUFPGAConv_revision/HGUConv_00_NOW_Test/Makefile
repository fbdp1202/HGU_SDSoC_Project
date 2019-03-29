
#+-------------------------------------------------------------------------------
# The following parameters are assigned with default values. These parameters can
# be overridden through the make command line
#+-------------------------------------------------------------------------------

# Current Directory
pwd := $(CURDIR)

# Build Executable
EXECUTABLE := darknet.out

#+--------------------------------------------------------------------------
# Makefile Data
#+--------------------------------------------------------------------------

BUILD_DIR= $(pwd)/build
OBJECT_DIR= $(BUILD_DIR)/src

# Source Files
SRC_DIR := $(pwd)/src
OBJECTS += \
$(OBJECT_DIR)/kernel.o \
$(OBJECT_DIR)/convolution.o \
$(OBJECT_DIR)/im2col.o \
$(OBJECT_DIR)/utils.o \
$(OBJECT_DIR)/image.o \
$(OBJECT_DIR)/layer.o \
$(OBJECT_DIR)/main.o \
$(OBJECT_DIR)/gemm.o

# Compilation and Link Flags
CFLAGS = -O3 -c # -Wall
CFLAGS += -DSDSOC
LFLAGS = "$@" "$<"
#+---------------------------------------------------------------------

# gcc Compiler
CC := gcc

.PHONY: all
all: $(pwd)/$(EXECUTABLE)

$(pwd)/$(EXECUTABLE): $(OBJECTS)
	mkdir -p $(BUILD_DIR)
	mkdir -p $(OBJECT_DIR)
	@echo 'Building Target: $@'
	$(CC) -o $(EXECUTABLE) $(OBJECTS) -lm
	@echo ' '

$(OBJECT_DIR)/%.o: $(SRC_DIR)/%.c
	@echo 'Building file: $<'
	mkdir -p $(BUILD_DIR)
	mkdir -p $(OBJECT_DIR)
	cd $(OBJECT_DIR) ; $(CC) $(CFLAGS) -o $(LFLAGS) -lm
	@echo 'Finished building: $<'
	@echo ' '

# Check Rule Builds the Sources and Executes on Specified Target

.PHONY: cleanall clean ultraclean
clean:
	$(RM) $(BUILD_DIR)/$(EXECUTABLE) $(OBJECTS)

cleanall:clean
	$(RM) -rf ./build
