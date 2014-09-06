#!/bin/bash 

awk -v OFS="\t" 'BEGIN{
    key="";
    value=0;
}{
    if(NR==1){
        key=$1;
        value=$2;
    } else if(key == $1){
        value += $2;
    } else {
        print key,value;
        key=$1;
        value=$2;
    }
}END{
    print key,value;
}'
