#  GNUmakefile

OBJDIR = ../obj/
vpath %.o ${OBJDIR}

.phony: default clean

default: 
		@echo -e "\n\
this makefile is to be called recursively --\n\
you must call make from the parent directory\n\
"

${BINARY_NAME}: ${OBJECTS}
		-echo ${BINARY_NAME} > .gitignore
		${CC} $^ ${CC_FLAGS} ${LIB_FLAGS} -o $@

clean:
		-rm -f ${BINARY_NAME}
