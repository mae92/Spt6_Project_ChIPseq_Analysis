#!/bin/bash

# For SAM and BAM processing with samtools1.7

# to run
# ./sam_bam_processing.sh /analysis_and_scripts /analysis_and_scripts/sample_file_all.txt


dir=$1
sample_index=$2


#SETUP FOR PARALLEL

#print the file name of the master file to for the user
echo "Processing all samples in file: ${sample_index}"

#get lists for parallel
#get file prefix list
file_prefix=`awk '{print $1}' ${sample_index}`
#get stain list
strain=`awk '{print $2}' ${sample_index}`
#get protein list
protein=`awk '{print $3}' ${sample_index}`
#get rep listfile_prefix = awk '{print $1}' $1
rep=`awk '{print $4}' ${sample_index}`
#get list of qubit readings
qubit=`awk '{print $5}' ${sample_index}`



#SETUP OUTPUT DIRECTORY STRUCTURE

#set working directory path
cd ${dir}

#convert sam to bam	

parallel --header : samtools view -bh -@ 1 \
	-o ${dir}/sc_bam/{SAMPLE}_{STRAIN}_{PROTEIN}_{REP}.bam \
	${dir}/sc_sam/{SAMPLE}_{STRAIN}_{PROTEIN}_{REP}.sam \
	::: ${file_prefix} :::+ ${strain} :::+ ${protein} :::+ ${rep}

#https://www.biostars.org/p/365882/

#sort bam by name
#The first sort can be omitted if the file is already name ordered


parallel --header : samtools sort -l 9 -n -O BAM -@ 1 -T ${dir}/sc_bam/{SAMPLE}_{STRAIN}_{PROTEIN}_{REP}.sorted \
	-o ${dir}/sc_bam/{SAMPLE}_{STRAIN}_{PROTEIN}_{REP}.sorted.bam \
	${dir}/sc_bam/{SAMPLE}_{STRAIN}_{PROTEIN}_{REP}.bam \
	::: ${file_prefix} :::+ ${strain} :::+ ${protein} :::+ ${rep}

#remove unnecessary files and directories
rm -rf ${dir}/sc_sam

#run samtools fixmate
#Add ms and MC tags for markdup to use later


parallel --header : samtools fixmate -rcm -@ 1 ${dir}/sc_bam/{SAMPLE}_{STRAIN}_{PROTEIN}_{REP}.sorted.bam \
	${dir}/sc_bam/{SAMPLE}_{STRAIN}_{PROTEIN}_{REP}_sorted_fixmate.bam \
	::: ${file_prefix} :::+ ${strain} :::+ ${protein} :::+ ${rep}

#remove unnecessary files and directories
rm ${dir}/sc_bam/*1.bam
rm ${dir}/sc_bam/*2.bam
rm ${dir}/sc_bam/*.sorted.bam


#sort bam
# Markdup needs position order
parallel --header : samtools sort -l 9 -O BAM -@ 2 -T ${dir}/sc_bam/{SAMPLE}_{STRAIN}_{PROTEIN}_{REP}_resorted_fixmate \
	-o ${dir}/sc_bam/{SAMPLE}_{STRAIN}_{PROTEIN}_{REP}_resorted_fixmate.bam \
	${dir}/sc_bam/{SAMPLE}_{STRAIN}_{PROTEIN}_{REP}_sorted_fixmate.bam \
	::: ${file_prefix} :::+ ${strain} :::+ ${protein} :::+ ${rep}

#remove unnecessary files and directories
# rm ${dir}/sc_bam/*_sorted_fixmate.bam


#remove duplicates
# Finally run mark duplicates to remove duplicates
parallel --header : samtools markdup -r -@ 2 ${dir}/sc_bam/{SAMPLE}_{STRAIN}_{PROTEIN}_{REP}_resorted_fixmate.bam \
	${dir}/sc_bam/{SAMPLE}_{STRAIN}_{PROTEIN}_{REP}_sorted_no_duplicates.bam \
	::: ${file_prefix} :::+ ${strain} :::+ ${protein} :::+ ${rep}

#remove unnecessary files and directories
# rm ${dir}/sc_bam/*_resorted_fixmate.bam

exit