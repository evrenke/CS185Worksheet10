#!/bin/bash
FILE="amazon_reviews_us_Books_v1_02.tsv"
sum=0

cut -f 9 "$FILE" | tail -n +2 | sort -n | awk '{if(NR==1){print "min", $1; sum+=$1} else{sum+=$1}} END{if(NR==0) exit ; print "max" , $1 ; print "avg", sum / NR}'
