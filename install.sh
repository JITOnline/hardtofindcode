#!/bin/bash
CURPATH=$(pwd)
tar -xf libdnet-1.11.tar.gz
tar -xf dnstracer-1.9.tar.gz
tar -xf ftpgrab_0.1.5.orig.tar.gz
tar -xf unicornscan-0.4.7-2.tar.bz2
cd ${CURPATH}/libdnet-1.11
./configure && make && make install
cd ${CURPATH}/dnstracer-1.9
./configure && make && make install
cd ${CURPATH}/ftpgrab-0.1.5
make && cp ftpgrab /usr/local/bin
cd ${CURPATH}/unicornscan-0.4.7
./configure CFLAGS=-D_GNU_SOURCE && make && make install
