#/usr/bin/sh

buildroot=$1

_includedir=$(rpm -E '%_includedir')
_libdir=$(rpm -E '%_libdir')
list() {
	for f in $buildroot/$1; do
		echo ${f#"$buildroot"}
	done
}
list $_includedir/*
list $_includedir/*
list $_libdir/*.so
list $_libdir/pkgconfig/*.pc
list /usr/share/gir-1.0/*.gir
