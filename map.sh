#!/bin/bash

awk -v OFS="\t" '{	
if(a[$1])
    a[$1]++;
else
    a[$1] = 1;
}END{
for(k in a)
    print k,a[k]
}'
