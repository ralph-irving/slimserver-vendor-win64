#!/bin/bash
export CFLAGS="-O2 -s"
export LDFLAGS="-s"

libtoolize --copy --force
aclocal
automake -a -c
autoconf

make distclean
make clean

./configure --enable-shared=no --with-fileio=lame --enable-nasm --disable-gtktest --without-libiconv

make
