#!/bin/bash

# to run
# ./align_stats.sh /analysis_and_scripts /analysis_and_scripts/sample_file_all.txt


parallel --citation 
will cite



dir=$1
sample_index=$2


# dir=/analysis_and_scripts
# sample_index=/analysis_and_scripts/sample_file_all.txt


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


cd ${dir}

rm ${dir}/sc_alignment_stats/total_reads.tmp ${dir}/sc_alignment_stats/paired_reads.tmp ${dir}/sc_alignment_stats/conc_un_reads.tmp ${dir}/sc_alignment_stats/conc_aln_reads.tmp ${dir}/sc_alignment_stats/conc_multi_reads.tmp


echo TOTAL_READS > ${dir}/sc_alignment_stats/total_reads.tmp
parallel --header : --keep-order " head -n1 ${dir}/sc_alignment_stats/{SAMPLE}_{STRAIN}_{PROTEIN}_{REP}_all_stats_sc.txt | sed 's/ reads; of these://' | tr -d \\n | sed 's/^ *//g' " ::: ${file_prefix} :::+ ${strain} :::+ ${protein} :::+ ${rep} >> ${dir}/sc_alignment_stats/total_reads.tmp


echo PAIRED_READS > ${dir}/sc_alignment_stats/paired_reads.tmp
parallel --header : --keep-order " head -n2 sc_alignment_stats/{SAMPLE}_{STRAIN}_{PROTEIN}_{REP}_all_stats_sc.txt | tail -n1 | sed 's/ were paired; of these://' | tr -d \\n | sed 's/^ *//g' " ::: ${file_prefix} :::+ ${strain} :::+ ${protein} :::+ ${rep} >> ${dir}/sc_alignment_stats/paired_reads.tmp

echo CONCORD_UNALIGNED_READS > ${dir}/sc_alignment_stats/conc_un_reads.tmp
parallel --header : --keep-order " head -n3 sc_alignment_stats/{SAMPLE}_{STRAIN}_{PROTEIN}_{REP}_all_stats_sc.txt | tail -n1 | sed 's/ aligned concordantly 0 times//' | tr -d \\n | sed 's/^ *//g' " ::: ${file_prefix} :::+ ${strain} :::+ ${protein} :::+ ${rep} >> ${dir}/sc_alignment_stats/conc_un_reads.tmp

echo CONCORD_ALIGNED_READS > ${dir}/sc_alignment_stats/conc_aln_reads.tmp
parallel --header : --keep-order " head -n4 sc_alignment_stats/{SAMPLE}_{STRAIN}_{PROTEIN}_{REP}_all_stats_sc.txt | tail -n1 | sed 's/ aligned concordantly exactly 1 time//' | tr -d \\n | sed 's/^ *//g' " ::: ${file_prefix} :::+ ${strain} :::+ ${protein} :::+ ${rep} >> ${dir}/sc_alignment_stats/conc_aln_reads.tmp

echo CONCORD_MULTI_ALIGN_READS > ${dir}/sc_alignment_stats/conc_multi_reads.tmp
parallel --header : --keep-order " head -n5 sc_alignment_stats/{SAMPLE}_{STRAIN}_{PROTEIN}_{REP}_all_stats_sc.txt | tail -n1 | sed 's/ aligned concordantly >1 times//' | tr -d \\n | sed 's/^ *//g' " ::: ${file_prefix} :::+ ${strain} :::+ ${protein} :::+ ${rep} >> ${dir}/sc_alignment_stats/conc_multi_reads.tmp


#append an additional column to the sample file
paste -d '\t' ${dir}/sc_alignment_stats/total_reads.tmp ${dir}/sc_alignment_stats/paired_reads.tmp ${dir}/sc_alignment_stats/conc_un_reads.tmp ${dir}/sc_alignment_stats/conc_aln_reads.tmp ${dir}/sc_alignment_stats/conc_multi_reads.tmp ${sample_index} > ${dir}/sc_alignment_stats/alignment_stats_per_sample.tsv

exit



















