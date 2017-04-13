#!/bin/bash

#
# This script takes one tab separated file as input
# and will convert the first column
# from 1,2,3... to chr1, chr2, chr3 ... for chromosome ids of mouse genomes
# 

# input file is the first and only argument.
FILE=$1

# create a unique name for the temp file
dt=`date +%Y%m%d`
tm=`date +%H%M%S`
TMP=TMP_"$dt"_"$tm"

awk -F $'\t'  'BEGIN {OFS=FS} $1 == "1" {$1 = "chr1"} \
$1 == "2" {$1 = "chr2"} \
$1 == "3" {$1 = "chr3"} \
$1 == "4" {$1 = "chr4"} \
$1 == "5" {$1 = "chr5"} \
$1 == "6" {$1 = "chr6"} \
$1 == "7" {$1 = "chr7"} \
$1 == "8" {$1 = "chr8"} \
$1 == "9" {$1 = "chr9"} \
$1 == "10" {$1 = "chr10"} \
$1 == "11" {$1 = "chr11"} \
$1 == "12" {$1 = "chr12"} \
$1 == "13" {$1 = "chr13"} \
$1 == "14" {$1 = "chr14"} \
$1 == "15" {$1 = "chr15"} \
$1 == "16" {$1 = "chr16"} \
$1 == "17" {$1 = "chr17"} \
$1 == "18" {$1 = "chr18"} \
$1 == "19" {$1 = "chr19"} \
$1 == "20" {$1 = "chr20"} \
$1 == "21" {$1 = "chr21"} \
$1 == "22" {$1 = "chr22"} \
$1 == "X" {$1 = "chrX"} \
$1 == "Y" {$1 = "chrY"} \
$1 == "MT" {$1 = "chrM"} ;1' $FILE > $TMP && mv $TMP $FILE