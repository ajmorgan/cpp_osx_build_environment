#  GNUmakefile
#  Note:  This makefile, and the two makefiles it calls recursively
#    are meant to be as generic as possible, with any changes being
#    affected from this top level makefile

BINARY_NAME = foo
CC = gcc
CC_FLAGS = 

LIB_FLAGS = -lusb -lpthread 

CC_DEP_FLAGS = -MMD -g -c -Wall -D DEBUG=1
SOURCES = ${notdir ${wildcard src/*.c}}
OBJECTS = ${SOURCES:.c=.o}

.EXPORT_ALL_VARIABLES: 
.phony: all clean

all:
		-ctags -R *
		-tools/beautify.sh
		${MAKE} -C obj objects
		${MAKE} -C bin ${BINARY_NAME}

clean:
		${MAKE} -C obj $@
		${MAKE} -C bin $@
