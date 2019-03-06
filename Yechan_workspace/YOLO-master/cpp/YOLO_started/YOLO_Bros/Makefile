
#+-------------------------------------------------------------------------------
# The following parameters are assigned with default values. These parameters can
# be overridden through the make command line
#+-------------------------------------------------------------------------------

# FPGA Board Platform (Default ~ zed)
PLATFORM := zed

# Run Target:
#   hw  - Compile for hardware
#   emu - Compile for emulation (Default)
#   cpu_emu - Quick compile for cpu emulation trating all HW functions as CPU functions
TARGET := hw

# Target OS:
#     linux (Default), standalone
TARGET_OS := linux

# Build Directory
BUILD_DIR := build/$(PLATFORM)_$(TARGET_OS)_$(TARGET)
# Emulation Mode:
#     debug     - Include debug data
#     optimized - Exclude debug data (Default)
EMU_MODE := optimized

# Current Directory
pwd := $(CURDIR)

# Points to Utility Directory
COMMON_REPO = ../../../
ABS_COMMON_REPO = $(shell readlink -f $(COMMON_REPO))

# Include Libraries
include $(ABS_COMMON_REPO)/libs/sds_utils/sds_utils.mk

# Additional sds++ flags - this should be reserved for sds++ flags defined
# at run-time. Other sds++ options should be defined in the makefile data section below
ADDL_FLAGS := -Wno-unused-label -Wall -Wno-unused-result -Wno-unknown-pragmas -Wfatal-errors -fPIC

# Set to 1 (number one) to enable sds++ verbose output
VERBOSE := 

# Build Executable
EXECUTABLE := darknet.elf 
#+--------------------------------------------------------------------------
# Makefile Data
#+--------------------------------------------------------------------------

# Source Files
SRC_DIR := src
OBJECTS += \
$(pwd)/$(BUILD_DIR)/src/kernel.o \
$(pwd)/$(BUILD_DIR)/src/shortcut_layer.o \
$(pwd)/$(BUILD_DIR)/src/rnn_layer.o \
$(pwd)/$(BUILD_DIR)/src/blas.o \
$(pwd)/$(BUILD_DIR)/src/tree.o \
$(pwd)/$(BUILD_DIR)/src/route_layer.o \
$(pwd)/$(BUILD_DIR)/src/cuda.o \
$(pwd)/$(BUILD_DIR)/src/parser.o \
$(pwd)/$(BUILD_DIR)/src/normalization_layer.o \
$(pwd)/$(BUILD_DIR)/src/detection_layer.o \
$(pwd)/$(BUILD_DIR)/src/darknet.o \
$(pwd)/$(BUILD_DIR)/src/crnn_layer.o \
$(pwd)/$(BUILD_DIR)/src/local_layer.o \
$(pwd)/$(BUILD_DIR)/src/lstm_layer.o \
$(pwd)/$(BUILD_DIR)/src/cost_layer.o \
$(pwd)/$(BUILD_DIR)/src/avgpool_layer.o \
$(pwd)/$(BUILD_DIR)/src/col2im.o \
$(pwd)/$(BUILD_DIR)/src/im2col.o \
$(pwd)/$(BUILD_DIR)/src/network.o \
$(pwd)/$(BUILD_DIR)/src/matrix.o \
$(pwd)/$(BUILD_DIR)/src/utils.o \
$(pwd)/$(BUILD_DIR)/src/gru_layer.o \
$(pwd)/$(BUILD_DIR)/src/data.o \
$(pwd)/$(BUILD_DIR)/src/option_list.o \
$(pwd)/$(BUILD_DIR)/src/region_layer.o \
$(pwd)/$(BUILD_DIR)/src/dropout_layer.o \
$(pwd)/$(BUILD_DIR)/src/demo.o \
$(pwd)/$(BUILD_DIR)/src/crop_layer.o \
$(pwd)/$(BUILD_DIR)/src/image.o \
$(pwd)/$(BUILD_DIR)/src/reorg_layer.o \
$(pwd)/$(BUILD_DIR)/src/softmax_layer.o \
$(pwd)/$(BUILD_DIR)/src/batchnorm_layer.o \
$(pwd)/$(BUILD_DIR)/src/activation_layer.o \
$(pwd)/$(BUILD_DIR)/src/layer.o \
$(pwd)/$(BUILD_DIR)/src/maxpool_layer.o \
$(pwd)/$(BUILD_DIR)/src/convolutional_layer.o \
$(pwd)/$(BUILD_DIR)/src/detector.o \
$(pwd)/$(BUILD_DIR)/src/activations.o \
$(pwd)/$(BUILD_DIR)/src/gemm.o \
$(pwd)/$(BUILD_DIR)/src/box.o \
$(pwd)/$(BUILD_DIR)/src/deconvolutional_layer.o \
$(pwd)/$(BUILD_DIR)/src/connected_layer.o \
$(pwd)/$(BUILD_DIR)/src/list.o

# SDS Options
HW_FLAGS := 
ifneq ($(TARGET), cpu_emu)
	HW_FLAGS += -sds-hw cal_gemm kernel.cpp -sds-end
endif

EMU_FLAGS := 
ifneq ($(TARGET), hw)
	EMU_FLAGS := -mno-bitstream -mno-boot-files -emulation $(EMU_MODE)
endif

# Compilation and Link Flags
IFLAGS := -I.
CFLAGS = -Wall -O3 -c
CFLAGS += -I$(sds_utils_HDRS)
CFLAGS += $(ADDL_FLAGS)
LFLAGS = "$@" "$<" 
#+---------------------------------------------------------------------

SDSFLAGS := -sds-pf $(PLATFORM) \
		-target-os $(TARGET_OS) 
ifeq ($(VERBOSE), 1)
SDSFLAGS += -verbose 
endif

# SDS Compiler
CC := sds++ $(SDSFLAGS)
SCC := sdscc $(SDSFLAGS)

.PHONY: all
all: $(BUILD_DIR)/$(EXECUTABLE)

$(BUILD_DIR)/$(EXECUTABLE): $(OBJECTS)
	mkdir -p $(BUILD_DIR)
	@echo 'Building Target: $@'
	@echo 'Trigerring: SDS++ Linker'
	cd $(BUILD_DIR) ; $(CC) -o $(EXECUTABLE) $(OBJECTS) $(EMU_FLAGS)
	@echo 'SDx Completed Building Target: $@'
	@echo ' '

$(pwd)/$(BUILD_DIR)/src/%.o: $(pwd)/$(SRC_DIR)/%.c
	@echo 'Building file: $<'
	@echo 'Invoking: SDSCC Compiler'
	mkdir -p $(BUILD_DIR)
	cd $(BUILD_DIR) ; $(SCC) $(CFLAGS) -o $(LFLAGS) $(HW_FLAGS)
	@echo 'Finished building: $<'
	@echo ' '
ifeq ($(TARGET), cpu_emu) 
	@echo 'Ignore the warning which states that hw function is not a HW accelerator but has pragma applied for cpu_emu mode'
	@echo ' '
endif

$(pwd)/$(BUILD_DIR)/src/%.o: $(pwd)/$(SRC_DIR)/%.cpp
	@echo 'Building file: $<'
	@echo 'Invoking: SDS++ Compiler'
	mkdir -p $(BUILD_DIR)
	cd $(BUILD_DIR) ; $(CC) $(CFLAGS) -o $(LFLAGS) $(HW_FLAGS)
	@echo 'Finished building: $<'
	@echo ' '
ifeq ($(TARGET), cpu_emu) 
	@echo 'Ignore the warning which states that hw function is not a HW accelerator but has pragma applied for cpu_emu mode'
	@echo ' '
endif

# Check Rule Builds the Sources and Executes on Specified Target
check: all
ifneq ($(TARGET), hw)

    ifeq ($(TARGET_OS), linux)
	    cp $(ABS_COMMON_REPO)/utility/emu_run.sh $(BUILD_DIR)/
	    cd $(BUILD_DIR) ; ./emu_run.sh $(EXECUTABLE)
    else
	    cd $(BUILD_DIR) ; sdsoc_emulator -timeout 500
    endif

else
	$(info "This Release Doesn't Support Automated Hardware Execution")
endif

.PHONY: cleanall clean ultraclean
clean:
	$(RM) $(BUILD_DIR)/$(EXECUTABLE) $(OBJECTS)

cleanall:clean
	$(RM) -rf ./build .Xil

.PHONY: docs
docs: README.md

README.md: description.json
	$(ABS_COMMON_REPO)/utility/readme_gen/readme_gen.py description.json

ECHO:= @echo

.PHONY: help

help::
	$(ECHO) "Makefile Usage:"
	$(ECHO) "	make all TARGET=<cpu_emu/emu/hw> TARGET_OS=<linux/standalone>"
	$(ECHO) "		Command to generate the design for specified Target and OS."
	$(ECHO) ""
	$(ECHO) "	make clean TARGET=<cpu_emu/emu/hw> TARGET_OS=<linux/standalone>"
	$(ECHO) "		Command to remove the generated non-hardware files."
	$(ECHO) ""
	$(ECHO) "	make cleanall"
	$(ECHO) "		Command to remove all the generated files."
	$(ECHO) ""
	$(ECHO) "	make check TARGET=<cpu_emu/emu/hw> TARGET_OS=<linux/standalone>"
	$(ECHO) "		Command to run application in emulation."
	$(ECHO) ""

