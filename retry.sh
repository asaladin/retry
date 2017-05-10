#!/bin/sh

cmd=$@
$cmd 
ST=$?
CNT=0
until [ $ST -eq 0 -o $CNT -eq 4 ]; do 
    sleep 3
    $cmd  
    ST=$?
    CNT=$((CNT+1))
done
test $ST -eq 0


