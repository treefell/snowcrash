#! /bin/sh
mkdir /tmp/lib
echo "int getuid(){
	return 4242;
}" > /tmp/getuid.c
gcc -shared -fPIC getuid.c -o getuid.so
cd /tmp
cp ~/level13 .
LD_PRELOAD=./getuid.so ./level13
