#!/usr/bin/env python

# By Joseph Troy, inspired by Alex Reynolds.
# Simple python code to print the transcript_id found in the 9th column of a GTF file
# below is a sample of what is in the 9th column of a GTF file 
# gene_id "XLOC_002817"; transcript_id "TCONS_00005044"; exon_number "2"; oId "CUFF.911.2"; class_code "u"; tss_id "TSS3974";
# 
# assumptions: 1) columns are tab separated, 
#              2) key value pairs in col 9 are separated by '; ' (semicolon and space)
#              3) the key and the value are separated by a space.

import sys


for line in sys.stdin:
    col9_dictionary = {}
    for litem in line.split('\t')[8].strip('\n').split('; '):
        #print litem
        col9_dictionary[litem.split(' ')[0]] = litem.split(' ')[1]
    # send the transcript value to standard out (stdout)
    print col9_dictionary['transcript_id'].strip('"')
