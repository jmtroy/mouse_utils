# mouse_utils
Utility scripts and code for mouse bioinformatics

mm_ensembl_chrom_ids_to_UCSC.sh is a simple script that changes ensembel mouse chromosome designations (1,2,3 ..) in a bed
file to UCSC chromosome designations (chr1, chr2, chr3 ...).  The script uses awk to do the transformations and creates a
temp file, and then the original file is overwritten with the temp file. 

get_transcript_ids_from_gtf.py is a very simple python program to get transcript_ids from rows in a gtf file and print them to standard out.  It is easy to edit this code to the gene_id, gene_name, etc.
