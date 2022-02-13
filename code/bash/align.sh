#!/bin/bash

# to run
# ./align.sh /analysis_and_scripts /data_and_annotations/FASTQ /analysis_and_scripts/sample_file_all.txt /data_and_annotations/Indexes/HISAT2_K_lactis/Klac /data_and_annotations/Indexes/HISAT2_S_cerevisiae/genome_tran



parallel --citation 
will cite



dir=$1
fastq_dir=$2
sample_index=$3
spike_in_hisat2_index=$4
sac_cer_hisat2_index=$5


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


cd ${fastq_dir}

# #map to K.l. with hisat2
parallel --header : hisat2 \
	-p 3 \
	-q \
	-k 2 \
	--no-unal \
	--no-mixed \
	--no-discordant \
	--no-spliced-alignment \
	--no-softclip \
	-t \
	-x ${spike_in_hisat2_index} \
	-1 {SAMPLE}_R1_001.fastq.gz \
	-2 {SAMPLE}_R2_001.fastq.gz \
	--un-conc-gz {SAMPLE}_no_aln_to_spkin_R%.fastq.gz \
	--summary-file ${dir}/spkin_alignment_stats/{SAMPLE}_{STRAIN}_{PROTEIN}_{REP}_all_stats_spkin.txt \
	--met-file ${dir}/spkin_alignment_stats/{SAMPLE}_{STRAIN}_{PROTEIN}_{REP}_all_metrics_spkin.txt \
	-S ${dir}/spkin_sam/{SAMPLE}_{STRAIN}_{PROTEIN}_{REP}.sam \
	::: ${file_prefix} :::+ ${strain} :::+ ${protein} :::+ ${rep}



#map to S.c.
parallel --header : hisat2 \
	-p 3 \
	-q \
	-k 2 \
	--no-unal \
	--no-mixed \
	--no-discordant \
	--no-spliced-alignment \
	--no-softclip \
	-t \
	-x ${sac_cer_hisat2_index} \
	-1 {SAMPLE}_no_aln_to_spkin_R1.fastq.gz \
	-2 {SAMPLE}_no_aln_to_spkin_R2.fastq.gz \
	--un-conc-gz {SAMPLE}_no_aln_to_sc_R%.fastq.gz \
	--summary-file ${dir}/sc_alignment_stats/{SAMPLE}_{STRAIN}_{PROTEIN}_{REP}_all_stats_sc.txt \
	--met-file ${dir}/sc_alignment_stats/{SAMPLE}_{STRAIN}_{PROTEIN}_{REP}_all_metrics_sc.txt \
	-S ${dir}/sc_sam/{SAMPLE}_{STRAIN}_{PROTEIN}_{REP}.sam \
	::: ${file_prefix} :::+ ${strain} :::+ ${protein} :::+ ${rep}


exit