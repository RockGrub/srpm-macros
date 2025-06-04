#/usr/bin/sh

buildroot=$1

_includedir=$(rpm -E '%_includedir')
_libdir=$(rpm -E '%_libdir')
for f in $buildroot/$_includedir; do
	echo $f
done
for f in $buildroot/$_libdir/*.so; do
	echo $f
done
for f in $buildroot/$_libdir/pkgconfig/*.pc; do
	echo $f
done
