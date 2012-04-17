#  GNUmakefile
#  Note:  This makefile, and the two makefiles it calls recursively
#    are meant to be as generic as possible, with any changes being
#    affected from this top level makefile

BINARY_NAME = foo
CC = clang++ 
CC_FLAGS = 

LIB_FLAGS = 

CC_DEP_FLAGS = -MMD -g -c -Wall -std=c++11
SOURCES = ${notdir ${wildcard src/*.cpp}}
OBJECTS = ${SOURCES:.cpp=.o}

.EXPORT_ALL_VARIABLES: 
.phony: all clean

all:
		#-ctags -R *
		#-cscope -bR $(find . -name *.[ch])
		#-tools/beautify.sh
		${MAKE} -C obj objects
		${MAKE} -C bin ${BINARY_NAME}

clean:
		${MAKE} -C obj $@
		${MAKE} -C bin $@
