#!/bin/bash

mkdir -p $PREFIX/bin

pushd abPOA
make INCLUDE="-I$PREFIX/include" CFLAGS="$CFLAGS -L$PREFIX/lib"
popd

make INCLUDE="-I$PREFIX/include" CFLAGS="-Wall -O3 -Wno-unused-variable -Wno-unused-function -Wno-misleading-indentation -I$PREFIX/include -L$PREFIX/lib"

cp bin/TideHunter $PREFIX/bin
