#!/bin/sh

make clean
make TARGET=funkey

mkdir -p opk
cp cglpsdl1 opk/cglpsdl1
cp meta/cglpsdl1.png opk/cglpsdl1.png
cp meta/Cglpsdl1.funkey-s.desktop opk/Cglpsdl1.funkey-s.desktop
cp meta/explorer.desktop opk/explorer.desktop

mksquashfs ./opk Cglpsdl1.opk -all-root -noappend -no-exports -no-xattrs

rm -r opk
