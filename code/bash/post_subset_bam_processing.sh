#!/bin/bash

# to run
# ./post_subset_bam_processing.sh /analysis_and_scripts



dir=$1


for BAM in `ls *spt6_50_Spt6_*_subsample.bam | awk -F "." '{print $1}'`
do

cd ${dir}/sc_bam/spt6_50_subset_bams

for BAM in `ls *_subsample.bam | awk -F "." '{print $1}'`
do
	samtools sort -l 9 -O BAM -@ 2 -T ${BAM}_sorted \
	-o ${BAM}_sorted.bam  \
	${BAM}.bam 
	
	samtools index -@ 2 ${BAM}_sorted.bam
	
	bamCoverage --bam ${BAM}_sorted.bam \
	--outFileName ${BAM}_unnormalized.bw \
	--outFileFormat bigwig \
	--binSize 1 \
	--ignoreDuplicates \
	--extendReads \
	--numberOfProcessors "max"

done



cd ${dir}/sc_bam/Spt6_AID_EF_subset_bams

for BAM in `ls *_subsample.bam | awk -F "." '{print $1}'`
do

	samtools sort -l 9 -O BAM -@ 2 -T ${BAM}_sorted \
	-o ${BAM}_sorted.bam  \
	${BAM}.bam 
	
	samtools index -@ 2 ${BAM}_sorted.bam
	
	bamCoverage --bam ${BAM}_sorted.bam \
	--outFileName ${BAM}_unnormalized.bw \
	--outFileFormat bigwig \
	--binSize 1 \
	--ignoreDuplicates \
	--extendReads \
	--numberOfProcessors "max"


done



cd ${dir}/sc_bam/H2B_subset_bams

for BAM in `ls *_subsample.bam | awk -F "." '{print $1}'`
do

	samtools sort -l 9 -O BAM -@ 2 -T ${BAM}_sorted \
	-o ${BAM}_sorted.bam  \
	${BAM}.bam 
	
	samtools index -@ 2 ${BAM}_sorted.bam
	
	bamCoverage --bam ${BAM}_sorted.bam \
	--outFileName ${BAM}_unnormalized.bw \
	--outFileFormat bigwig \
	--binSize 1 \
	--ignoreDuplicates \
	--extendReads \
	--numberOfProcessors "max"


done



cd ${dir}/sc_bam/H2Bub_subset_bams

for BAM in `ls *_subsample.bam | awk -F "." '{print $1}'`
do

	samtools sort -l 9 -O BAM -@ 2 -T ${BAM}_sorted \
	-o ${BAM}_sorted.bam  \
	${BAM}.bam 
	
	samtools index -@ 2 ${BAM}_sorted.bam
	
	bamCoverage --bam ${BAM}_sorted.bam \
	--outFileName ${BAM}_unnormalized.bw \
	--outFileFormat bigwig \
	--binSize 1 \
	--ignoreDuplicates \
	--extendReads \
	--numberOfProcessors "max"

done



cd ${dir}/sc_bam/H3_subset_bams

for BAM in `ls *_subsample.bam | awk -F "." '{print $1}'`
do

	samtools sort -l 9 -O BAM -@ 2 -T ${BAM}_sorted \
	-o ${BAM}_sorted.bam  \
	${BAM}.bam 
	
	samtools index -@ 2 ${BAM}_sorted.bam
	
	bamCoverage --bam ${BAM}_sorted.bam \
	--outFileName ${BAM}_unnormalized.bw \
	--outFileFormat bigwig \
	--binSize 1 \
	--ignoreDuplicates \
	--extendReads \
	--numberOfProcessors "max"

done



cd ${dir}/sc_bam/H3K4me2_subset_bams

for BAM in `ls *_subsample.bam | awk -F "." '{print $1}'`
do

	samtools sort -l 9 -O BAM -@ 2 -T ${BAM}_sorted \
	-o ${BAM}_sorted.bam  \
	${BAM}.bam 
	
	samtools index -@ 2 ${BAM}_sorted.bam
	
	bamCoverage --bam ${BAM}_sorted.bam \
	--outFileName ${BAM}_unnormalized.bw \
	--outFileFormat bigwig \
	--binSize 1 \
	--ignoreDuplicates \
	--extendReads \
	--numberOfProcessors "max"

done



cd ${dir}/sc_bam/H3K4me3_subset_bams

for BAM in `ls *_subsample.bam | awk -F "." '{print $1}'`
do

	samtools sort -l 9 -O BAM -@ 2 -T ${BAM}_sorted \
	-o ${BAM}_sorted.bam  \
	${BAM}.bam 
	
	samtools index -@ 2 ${BAM}_sorted.bam
	
	bamCoverage --bam ${BAM}_sorted.bam \
	--outFileName ${BAM}_unnormalized.bw \
	--outFileFormat bigwig \
	--binSize 1 \
	--ignoreDuplicates \
	--extendReads \
	--numberOfProcessors "max"

done




