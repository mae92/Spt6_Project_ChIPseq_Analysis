#!/bin/bash

# to run
#./ncis.sh /analysis_and_scripts /analysis_and_scripts/sc_bam/spt6_50_subset_bams/test_sample_index /analysis_and_scripts/sc_bam/spt6_50_subset_bams


parallel --citation 
will cite


dir=$1
sample_index=$2
bam_dir=$3


mkdir counts
mkdir ncis_calculations
mkdir bigwig_ncis


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


cd ${bam_dir}

########
# NCIS #
########

# percent = the percent of bins that will be used for the normalization
# so percent = 2 means that 2% of all genomic bins are used
# this means that effectively 2% of the genome is used for background normalization

percent=2


## parallel --header : "bedtools coverage -counts -a /data_and_annotations/Annotations/BED_Files/S_c_genomic_bins_100_bp.bed -b {SAMPLE}_{STRAIN}_{PROTEIN}_{REP}_subsample_sorted.bam > ${dir}/ncis_calculations/{STRAIN}_{PROTEIN}_{REP}_counts.bed" ::: ${file_prefix} :::+ ${strain} :::+ ${protein} :::+ ${rep}

parallel --header : "bedtools multicov -bams {SAMPLE}_{STRAIN}_{PROTEIN}_{REP}_subsample_sorted.bam -bed /data_and_annotations/Annotations/BED_Files/S_c_genomic_bins_100_bp.bed > ${dir}/ncis_calculations/{STRAIN}_{PROTEIN}_{REP}_counts.bed" ::: ${file_prefix} :::+ ${strain} :::+ ${protein} :::+ ${rep}

parallel --header : "join -j2 -o1.1,1.2,1.3,1.4,2.4 ${dir}/ncis_calculations/{STRAIN}_Input_{REP}_counts.bed ${dir}/ncis_calculations/{STRAIN}_{PROTEIN}_{REP}_counts.bed > ${dir}/ncis_calculations/{STRAIN}_{PROTEIN}_{REP}_counts_plus_input.bed"  ::: ${file_prefix} :::+ ${strain} :::+ ${protein} :::+ ${rep}



cd ${dir}/ncis_calculations

for file in `ls *_counts_plus_input.bed`
do

file_name=`echo ${file} | awk -F "." '{print $1}'`

percent_of_genome_covered_by_norm_regions=`wc -l ${file} \
| awk -v p=$percent '{print (($1/100)*p)}'`

echo percent of genome selected by user = $percent
echo file_length = `wc -l ${file}`
echo percent_of_genome_covered_by_norm_regions bin count = $percent_of_genome_covered_by_norm_regions

grep -v '#' ${file} \
| grep -v 'Mito' \
| awk ' $4>0.0 && $5>0.0 {print $1 "\t" $2 "\t" $3 "\t" $4 "\t" $5 "\t" ($5/$4)}' \
> ${file_name}_norm_file.txt

r=1

for t in `seq 1 1 500`
do

old_r=$r

r=`awk -v t=$t ' $5<=t {ChIP+=$5; Input+=$4} END {print ChIP/Input}' ${file_name}_norm_file.txt`

n=`awk -v t=$t ' $5<=t {print}' ${file_name}_norm_file.txt | wc -l | awk '{print $1}'`

echo $t reads

if (( $(echo "$r >= $old_r" | bc -l) && $(echo "$n >= $percent_of_genome_covered_by_norm_regions" | bc -l) ))
then
	echo r=$r, n=$n, t=$t
	break
else
	echo r=$r, n=$n, t=$t
	continue
fi


done

echo norm_factor_r,num_bins_n,count_cuttoff_t > ${dir}/ncis_calculations/${file_name}_norm_stats.csv
echo $r,$n,$t >> ${dir}/ncis_calculations/${file_name}_norm_stats.csv

done 





cd ${dir}

#start file
echo norm_factor_r,num_bins_n,count_cuttoff_t > ${dir}/counts/all_norm_stats.csv
#compile stats
parallel --header : --keep-order "head -n2 ${dir}/ncis_calculations/{STRAIN}_{PROTEIN}_{REP}_counts_plus_input_norm_stats.csv | tail -n1" ::: ${file_prefix} :::+ ${strain} :::+ ${protein} :::+ ${rep} >> ${dir}/counts/all_norm_stats.csv
 

#start file
echo NCIS > ${dir}/counts/NCISs.txt
##Get r value for all
awk -F "," ' NR>1 {print $1}' ${dir}/counts/all_norm_stats.csv >> ${dir}/counts/NCISs.txt

##Adjust r value to 1/r 
##because I expect background read levels to be inversely proportional to true signal
echo NCIS > ${dir}/counts/inverse_NCIS_head.txt
grep -v "NCIS" ${dir}/counts/NCISs.txt | awk -F "," '{print 1/$1}' > ${dir}/counts/inverse_NCIS.txt
cat ${dir}/counts/inverse_NCIS_head.txt ${dir}/counts/inverse_NCIS.txt > ${dir}/counts/inverse_NCISs.txt
rm ${dir}/counts/inverse_NCIS_head.txt ${dir}/counts/inverse_NCIS.txt

#append an additional column to the sample file
paste -d '\t' ${sample_index} ${dir}/counts/inverse_NCISs.txt > ${dir}/counts/ncis_per_sample.txt


#makes region normalized bigwig
parallel --header : bamCoverage --bam ${bam_dir}/{SAMPLE}_{STRAIN}_{PROTEIN}_{REP}_subsample_sorted.bam \
--outFileName ${dir}/bigwig_ncis/{STRAIN}_{PROTEIN}_{REP}_ncis_normalized.bw \
--outFileFormat bigwig \
--scaleFactor {NCIS} \
--binSize 1 \
--ignoreDuplicates \
--extendReads \
--numberOfProcessors "max" \
::: ${file_prefix} :::+ ${strain} :::+ ${protein} :::+ ${rep} ::::+ ${dir}/counts/inverse_NCISs.txt





exit