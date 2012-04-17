#!/bin/bash

astyle --style=ansi --indent=spaces=4 --convert-tabs --align-pointer=name $(find . -name *.[ch]) | grep -v "unchanged"

rm $(find . -name *.orig) >/dev/null 2>&1

exit 0
