#!/bin/bash

# to run
# ./sam_stats.sh /analysis_and_scripts /analysis_and_scripts/sample_file_all.txt



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

mkdir sam_stats


parallel --header : "samtools flagstat -@ 3 ${dir}/sc_sam/{SAMPLE}_{STRAIN}_{PROTEIN}_{REP}.sam >  ${dir}/sam_stats/{SAMPLE}_{STRAIN}_{PROTEIN}_{REP}_flagstat.txt" ::: ${file_prefix} :::+ ${strain} :::+ ${protein} :::+ ${rep}


rm ${dir}/sam_stats/sam_stats.tmp ${dir}/sam_stats/sam_stats_per_sample.tsv


echo PROPERLY_PAIRED_READS > ${dir}/sam_stats/sam_stats.tmp
parallel --header : --keep-order "head -n9 ${dir}/sam_stats/{SAMPLE}_{STRAIN}_{PROTEIN}_{REP}_flagstat.txt | tail -n1 | sed 's/+.*//' " ::: ${file_prefix} :::+ ${strain} :::+ ${protein} :::+ ${rep} >> ${dir}/sam_stats/sam_stats.tmp

#append an additional column to the sample file
paste -d '\t' ${dir}/sam_stats/sam_stats.tmp  ${sample_index} > ${dir}/sam_stats/sam_stats_per_sample.tsv

#  + 0 properly paired (100.00% : N/A)

exit



















