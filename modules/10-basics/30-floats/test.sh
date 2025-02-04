#!/bin/sh

ACTUAL=`tcc -run main.c`
EXPECTED='0.00 : 0.00
20.00 : 12.42
40.00 : 24.84
60.00 : 37.26
80.00 : 49.68
100.00 : 62.10
120.00 : 74.52
140.00 : 86.94
160.00 : 99.36
180.00 : 111.78
200.00 : 124.20
220.00 : 136.62
240.00 : 149.04
260.00 : 161.46
280.00 : 173.88
300.00 : 186.30';

if [ "$ACTUAL" != "$EXPECTED" ]; then
    echo "Expected:\n$EXPECTED\nReceived:\n$ACTUAL"
    exit 1
fi
