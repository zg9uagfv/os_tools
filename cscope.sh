#!/bin/sh
DIR=`pwd`
ctags -R --languages=C,C++ --c++-kinds=+cdefgmnpstuv --c-kinds=+cdefgmnpstuv --fields=+iaS --extra=+q $DIR
find $DIR -name "*.h" -o -name "*.c" -o -name "*.cc" > cscope.files
cscope -bkq -i cscope.files
