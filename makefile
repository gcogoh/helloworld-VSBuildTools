TARGET=helloworld

SRC_DIR=./src
OBJ_DIR=./obj
BIN_DIR=./bin

CC        = gcc
CXX       = g++
CPPFLAGS  = -g -O0
CXXFLAGS  = 
LDFLAGS   = 
LOADLIBES = 
LDLIBS    = -static -lstdc++ -lgcc -lwinpthread

EXTENSION:=.cpp
SRC:=$(wildcard  $(SRC_DIR)/**/*$(EXTENSION)) $(wildcard $(SRC_DIR)/*$(EXTENSION))
SRC_WITHOUT_PREFIX:=$(patsubst $(SRC_DIR)%,%,$(SRC))
OBJ:=$(addprefix $(OBJ_DIR),$(SRC_WITHOUT_PREFIX:$(EXTENSION)=.o))

$(BIN_DIR)/$(TARGET) : $(OBJ)
	@if [ ! -d $(BIN_DIR) ]; then mkdir $(BIN_DIR); fi
	$(CC) $(LDFLAGS) $^ $(LOADLIBES) $(LDLIBS) -o $@

$(OBJ_DIR)/%.o : $(SRC_DIR)/%$(EXTENSION)
	@if [ ! -d $(OBJ_DIR) ]; then mkdir $(OBJ_DIR); fi
	$(CXX) $(CXXFLAGS) $(CPPFLAGS) -c -o $@ $<


.PHONY: all clean

all: $(BIN_DIR)/$(TARGET)

clean:
	@if [ -d $(OBJ_DIR) ]; then rm -fr $(OBJ_DIR); fi
	@if [ -d $(BIN_DIR) ]; then rm -fr $(BIN_DIR); fi
