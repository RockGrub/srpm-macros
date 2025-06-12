#/usr/bin/sh

for f in $1/$_libdir/*.a; do
	echo ${f#"$buildroot"}
done
