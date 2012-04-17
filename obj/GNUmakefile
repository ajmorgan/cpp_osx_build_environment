#  GNUmakefile

SRCDIR = ../src/
INCDIR = ../inc/
vpath %.cpp ${SRCDIR}

.phony: default objects clean

default: 
		@echo -e "\n\
this makefile is to be called recursively --\n\
you must call make from the parent directory\n\
"

objects: ${OBJECTS}

%.o: %.cpp
		${CC} ${CC_DEP_FLAGS} $< -I${INCDIR}

-include *.d

clean:
		-rm -f *.o *.d
