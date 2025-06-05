#/usr/bin/sh

for f in $1/$_libdir/*.so.*; do
	echo $f
done
