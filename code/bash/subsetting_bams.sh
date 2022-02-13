#!/bin/bash

# to run
# ./subsetting_bams.sh /analysis_and_scripts



dir=$1



cd ${dir}/sc_bam


for BAM in `ls *_sorted_no_duplicates.bam | awk -F "." '{print $1}'`
do

	samtools index -@ 2 ${BAM}.bam

done



######################
# spt6-50 experiment #
######################

cd ${dir}/sc_bam

mkdir spt6_50_subset_bams

frac=$( samtools idxstats ${dir}/sc_bam/ME001_S1_WT_Rpb3_1_sorted_no_duplicates.bam | cut -f3 | awk 'BEGIN {total=0} {total += $1} END {frac=9000000/total; if (frac > 1) {print 1} else {print frac}}' )
samtools view -bs $frac -@ 8 ${dir}/sc_bam/ME001_S1_WT_Rpb3_1_sorted_no_duplicates.bam > ${dir}/sc_bam/spt6_50_subset_bams/ME001_S1_WT_Rpb3_1_subsample.bam

frac=$( samtools idxstats ${dir}/sc_bam/ME002_S2_WT_Rpb3_2_sorted_no_duplicates.bam | cut -f3 | awk 'BEGIN {total=0} {total += $1} END {frac=9000000/total; if (frac > 1) {print 1} else {print frac}}' )
samtools view -bs $frac -@ 8 ${dir}/sc_bam/ME002_S2_WT_Rpb3_2_sorted_no_duplicates.bam > ${dir}/sc_bam/spt6_50_subset_bams/ME002_S2_WT_Rpb3_2_subsample.bam

frac=$( samtools idxstats ${dir}/sc_bam/ME003_S3_spt6_50_Rpb3_1_sorted_no_duplicates.bam | cut -f3 | awk 'BEGIN {total=0} {total += $1} END {frac=9000000/total; if (frac > 1) {print 1} else {print frac}}' )
samtools view -bs $frac -@ 8 ${dir}/sc_bam/ME003_S3_spt6_50_Rpb3_1_sorted_no_duplicates.bam > ${dir}/sc_bam/spt6_50_subset_bams/ME003_S3_spt6_50_Rpb3_1_subsample.bam

frac=$( samtools idxstats ${dir}/sc_bam/ME004_S4_spt6_50_Rpb3_2_sorted_no_duplicates.bam | cut -f3 | awk 'BEGIN {total=0} {total += $1} END {frac=9000000/total; if (frac > 1) {print 1} else {print frac}}' )
samtools view -bs $frac -@ 8 ${dir}/sc_bam/ME004_S4_spt6_50_Rpb3_2_sorted_no_duplicates.bam > ${dir}/sc_bam/spt6_50_subset_bams/ME004_S4_spt6_50_Rpb3_2_subsample.bam

frac=$( samtools idxstats ${dir}/sc_bam/ME005_S5_WT_Spt6_1_sorted_no_duplicates.bam | cut -f3 | awk 'BEGIN {total=0} {total += $1} END {frac=9000000/total; if (frac > 1) {print 1} else {print frac}}' )
samtools view -bs $frac -@ 8 ${dir}/sc_bam/ME005_S5_WT_Spt6_1_sorted_no_duplicates.bam > ${dir}/sc_bam/spt6_50_subset_bams/ME005_S5_WT_Spt6_1_subsample.bam

frac=$( samtools idxstats ${dir}/sc_bam/ME006_S6_WT_Spt6_2_sorted_no_duplicates.bam | cut -f3 | awk 'BEGIN {total=0} {total += $1} END {frac=9000000/total; if (frac > 1) {print 1} else {print frac}}' )
samtools view -bs $frac -@ 8 ${dir}/sc_bam/ME006_S6_WT_Spt6_2_sorted_no_duplicates.bam > ${dir}/sc_bam/spt6_50_subset_bams/ME006_S6_WT_Spt6_2_subsample.bam

frac=$( samtools idxstats ${dir}/sc_bam/ME007_S7_spt6_50_Spt6_1_sorted_no_duplicates.bam | cut -f3 | awk 'BEGIN {total=0} {total += $1} END {frac=9000000/total; if (frac > 1) {print 1} else {print frac}}' )
samtools view -bs $frac -@ 8 ${dir}/sc_bam/ME007_S7_spt6_50_Spt6_1_sorted_no_duplicates.bam > ${dir}/sc_bam/spt6_50_subset_bams/ME007_S7_spt6_50_Spt6_1_subsample.bam

frac=$( samtools idxstats ${dir}/sc_bam/ME008_S8_spt6_50_Spt6_2_sorted_no_duplicates.bam | cut -f3 | awk 'BEGIN {total=0} {total += $1} END {frac=9000000/total; if (frac > 1) {print 1} else {print frac}}' )
samtools view -bs $frac -@ 8 ${dir}/sc_bam/ME008_S8_spt6_50_Spt6_2_sorted_no_duplicates.bam > ${dir}/sc_bam/spt6_50_subset_bams/ME008_S8_spt6_50_Spt6_2_subsample.bam

frac=$( samtools idxstats ${dir}/sc_bam/ME009_S9_WT_HSV_Paf1_1_sorted_no_duplicates.bam | cut -f3 | awk 'BEGIN {total=0} {total += $1} END {frac=9000000/total; if (frac > 1) {print 1} else {print frac}}' )
samtools view -bs $frac -@ 8 ${dir}/sc_bam/ME009_S9_WT_HSV_Paf1_1_sorted_no_duplicates.bam > ${dir}/sc_bam/spt6_50_subset_bams/ME009_S9_WT_HSV_Paf1_1_subsample.bam

frac=$( samtools idxstats ${dir}/sc_bam/ME010_S10_WT_HSV_Paf1_2_sorted_no_duplicates.bam | cut -f3 | awk 'BEGIN {total=0} {total += $1} END {frac=9000000/total; if (frac > 1) {print 1} else {print frac}}' )
samtools view -bs $frac -@ 8 ${dir}/sc_bam/ME010_S10_WT_HSV_Paf1_2_sorted_no_duplicates.bam > ${dir}/sc_bam/spt6_50_subset_bams/ME010_S10_WT_HSV_Paf1_2_subsample.bam

frac=$( samtools idxstats ${dir}/sc_bam/ME011_S11_spt6_50_HSV_Paf1_1_sorted_no_duplicates.bam | cut -f3 | awk 'BEGIN {total=0} {total += $1} END {frac=9000000/total; if (frac > 1) {print 1} else {print frac}}' )
samtools view -bs $frac -@ 8 ${dir}/sc_bam/ME011_S11_spt6_50_HSV_Paf1_1_sorted_no_duplicates.bam > ${dir}/sc_bam/spt6_50_subset_bams/ME011_S11_spt6_50_HSV_Paf1_1_subsample.bam

frac=$( samtools idxstats ${dir}/sc_bam/ME012_S12_spt6_50_HSV_Paf1_2_sorted_no_duplicates.bam | cut -f3 | awk 'BEGIN {total=0} {total += $1} END {frac=9000000/total; if (frac > 1) {print 1} else {print frac}}' )
samtools view -bs $frac -@ 8 ${dir}/sc_bam/ME012_S12_spt6_50_HSV_Paf1_2_sorted_no_duplicates.bam > ${dir}/sc_bam/spt6_50_subset_bams/ME012_S12_spt6_50_HSV_Paf1_2_subsample.bam

frac=$( samtools idxstats ${dir}/sc_bam/ME013_S13_WT_Input_1_sorted_no_duplicates.bam | cut -f3 | awk 'BEGIN {total=0} {total += $1} END {frac=9000000/total; if (frac > 1) {print 1} else {print frac}}' )
samtools view -bs $frac -@ 8 ${dir}/sc_bam/ME013_S13_WT_Input_1_sorted_no_duplicates.bam > ${dir}/sc_bam/spt6_50_subset_bams/ME013_S13_WT_Input_1_subsample.bam

frac=$( samtools idxstats ${dir}/sc_bam/ME014_S14_WT_Input_2_sorted_no_duplicates.bam | cut -f3 | awk 'BEGIN {total=0} {total += $1} END {frac=9000000/total; if (frac > 1) {print 1} else {print frac}}' )
samtools view -bs $frac -@ 8 ${dir}/sc_bam/ME014_S14_WT_Input_2_sorted_no_duplicates.bam > ${dir}/sc_bam/spt6_50_subset_bams/ME014_S14_WT_Input_2_subsample.bam

frac=$( samtools idxstats ${dir}/sc_bam/ME015_S15_spt6_50_Input_1_sorted_no_duplicates.bam | cut -f3 | awk 'BEGIN {total=0} {total += $1} END {frac=9000000/total; if (frac > 1) {print 1} else {print frac}}' )
samtools view -bs $frac -@ 8 ${dir}/sc_bam/ME015_S15_spt6_50_Input_1_sorted_no_duplicates.bam > ${dir}/sc_bam/spt6_50_subset_bams/ME015_S15_spt6_50_Input_1_subsample.bam

frac=$( samtools idxstats ${dir}/sc_bam/ME016_S16_spt6_50_Input_2_sorted_no_duplicates.bam | cut -f3 | awk 'BEGIN {total=0} {total += $1} END {frac=9000000/total; if (frac > 1) {print 1} else {print frac}}' )
samtools view -bs $frac -@ 8 ${dir}/sc_bam/ME016_S16_spt6_50_Input_2_sorted_no_duplicates.bam > ${dir}/sc_bam/spt6_50_subset_bams/ME016_S16_spt6_50_Input_2_subsample.bam

frac=$( samtools idxstats ${dir}/sc_bam/ME037_S21_WT_IgG_1_sorted_no_duplicates.bam | cut -f3 | awk 'BEGIN {total=0} {total += $1} END {frac=9000000/total; if (frac > 1) {print 1} else {print frac}}' )
samtools view -bs $frac -@ 8 ${dir}/sc_bam/ME037_S21_WT_IgG_1_sorted_no_duplicates.bam > ${dir}/sc_bam/spt6_50_subset_bams/ME037_S21_WT_IgG_1_subsample.bam

frac=$( samtools idxstats ${dir}/sc_bam/ME038_S22_WT_IgG_2_sorted_no_duplicates.bam | cut -f3 | awk 'BEGIN {total=0} {total += $1} END {frac=9000000/total; if (frac > 1) {print 1} else {print frac}}' )
samtools view -bs $frac -@ 8 ${dir}/sc_bam/ME038_S22_WT_IgG_2_sorted_no_duplicates.bam > ${dir}/sc_bam/spt6_50_subset_bams/ME038_S22_WT_IgG_2_subsample.bam

frac=$( samtools idxstats ${dir}/sc_bam/ME039_S23_spt6_50_IgG_1_sorted_no_duplicates.bam | cut -f3 | awk 'BEGIN {total=0} {total += $1} END {frac=9000000/total; if (frac > 1) {print 1} else {print frac}}' )
samtools view -bs $frac -@ 8 ${dir}/sc_bam/ME039_S23_spt6_50_IgG_1_sorted_no_duplicates.bam > ${dir}/sc_bam/spt6_50_subset_bams/ME039_S23_spt6_50_IgG_1_subsample.bam

frac=$( samtools idxstats ${dir}/sc_bam/ME040_S24_spt6_50_IgG_2_sorted_no_duplicates.bam | cut -f3 | awk 'BEGIN {total=0} {total += $1} END {frac=9000000/total; if (frac > 1) {print 1} else {print frac}}' )
samtools view -bs $frac -@ 8 ${dir}/sc_bam/ME040_S24_spt6_50_IgG_2_sorted_no_duplicates.bam > ${dir}/sc_bam/spt6_50_subset_bams/ME040_S24_spt6_50_IgG_2_subsample.bam

frac=$( samtools idxstats ${dir}/sc_bam/ME041_S25_WT_Spt5_1_sorted_no_duplicates.bam | cut -f3 | awk 'BEGIN {total=0} {total += $1} END {frac=9000000/total; if (frac > 1) {print 1} else {print frac}}' )
samtools view -bs $frac -@ 8 ${dir}/sc_bam/ME041_S25_WT_Spt5_1_sorted_no_duplicates.bam > ${dir}/sc_bam/spt6_50_subset_bams/ME041_S25_WT_Spt5_1_subsample.bam

frac=$( samtools idxstats ${dir}/sc_bam/ME042_S26_WT_Spt5_2_sorted_no_duplicates.bam | cut -f3 | awk 'BEGIN {total=0} {total += $1} END {frac=9000000/total; if (frac > 1) {print 1} else {print frac}}' )
samtools view -bs $frac -@ 8 ${dir}/sc_bam/ME042_S26_WT_Spt5_2_sorted_no_duplicates.bam > ${dir}/sc_bam/spt6_50_subset_bams/ME042_S26_WT_Spt5_2_subsample.bam

frac=$( samtools idxstats ${dir}/sc_bam/ME043_S27_spt6_50_Spt5_1_sorted_no_duplicates.bam | cut -f3 | awk 'BEGIN {total=0} {total += $1} END {frac=9000000/total; if (frac > 1) {print 1} else {print frac}}' )
samtools view -bs $frac -@ 8 ${dir}/sc_bam/ME043_S27_spt6_50_Spt5_1_sorted_no_duplicates.bam > ${dir}/sc_bam/spt6_50_subset_bams/ME043_S27_spt6_50_Spt5_1_subsample.bam

frac=$( samtools idxstats ${dir}/sc_bam/ME044_S28_spt6_50_Spt5_2_sorted_no_duplicates.bam | cut -f3 | awk 'BEGIN {total=0} {total += $1} END {frac=9000000/total; if (frac > 1) {print 1} else {print frac}}' )
samtools view -bs $frac -@ 8 ${dir}/sc_bam/ME044_S28_spt6_50_Spt5_2_sorted_no_duplicates.bam > ${dir}/sc_bam/spt6_50_subset_bams/ME044_S28_spt6_50_Spt5_2_subsample.bam



##########################
# Spt6-AID EF experiment #
##########################

cd ${dir}/sc_bam

mkdir Spt6_AID_EF_subset_bams

frac=$( samtools idxstats ${dir}/sc_bam/ME017_S1_Spt6_AID_DMSO_HSV_Paf1_1_sorted_no_duplicates.bam | cut -f3 | awk 'BEGIN {total=0} {total += $1} END {frac=5000000/total; if (frac > 1) {print 1} else {print frac}}' )
samtools view -bs $frac -@ 8 ${dir}/sc_bam/ME017_S1_Spt6_AID_DMSO_HSV_Paf1_1_sorted_no_duplicates.bam > ${dir}/sc_bam/Spt6_AID_EF_subset_bams/ME017_S1_Spt6_AID_DMSO_HSV_Paf1_1_subsample.bam

frac=$( samtools idxstats ${dir}/sc_bam/ME018_S2_Spt6_AID_IAA_HSV_Paf1_1_sorted_no_duplicates.bam | cut -f3 | awk 'BEGIN {total=0} {total += $1} END {frac=5000000/total; if (frac > 1) {print 1} else {print frac}}' )
samtools view -bs $frac -@ 8 ${dir}/sc_bam/ME018_S2_Spt6_AID_IAA_HSV_Paf1_1_sorted_no_duplicates.bam > ${dir}/sc_bam/Spt6_AID_EF_subset_bams/ME018_S2_Spt6_AID_IAA_HSV_Paf1_1_subsample.bam

frac=$( samtools idxstats ${dir}/sc_bam/ME019_S3_Spt6_AID_DMSO_HSV_Paf1_2_sorted_no_duplicates.bam | cut -f3 | awk 'BEGIN {total=0} {total += $1} END {frac=5000000/total; if (frac > 1) {print 1} else {print frac}}' )
samtools view -bs $frac -@ 8 ${dir}/sc_bam/ME019_S3_Spt6_AID_DMSO_HSV_Paf1_2_sorted_no_duplicates.bam > ${dir}/sc_bam/Spt6_AID_EF_subset_bams/ME019_S3_Spt6_AID_DMSO_HSV_Paf1_2_subsample.bam

frac=$( samtools idxstats ${dir}/sc_bam/ME020_S4_Spt6_AID_IAA_HSV_Paf1_2_sorted_no_duplicates.bam | cut -f3 | awk 'BEGIN {total=0} {total += $1} END {frac=5000000/total; if (frac > 1) {print 1} else {print frac}}' )
samtools view -bs $frac -@ 8 ${dir}/sc_bam/ME020_S4_Spt6_AID_IAA_HSV_Paf1_2_sorted_no_duplicates.bam > ${dir}/sc_bam/Spt6_AID_EF_subset_bams/ME020_S4_Spt6_AID_IAA_HSV_Paf1_2_subsample.bam

frac=$( samtools idxstats ${dir}/sc_bam/ME021_S5_Spt6_AID_DMSO_Rpb3_1_sorted_no_duplicates.bam | cut -f3 | awk 'BEGIN {total=0} {total += $1} END {frac=5000000/total; if (frac > 1) {print 1} else {print frac}}' )
samtools view -bs $frac -@ 8 ${dir}/sc_bam/ME021_S5_Spt6_AID_DMSO_Rpb3_1_sorted_no_duplicates.bam > ${dir}/sc_bam/Spt6_AID_EF_subset_bams/ME021_S5_Spt6_AID_DMSO_Rpb3_1_subsample.bam

frac=$( samtools idxstats ${dir}/sc_bam/ME022_S6_Spt6_AID_IAA_Rpb3_1_sorted_no_duplicates.bam | cut -f3 | awk 'BEGIN {total=0} {total += $1} END {frac=5000000/total; if (frac > 1) {print 1} else {print frac}}' )
samtools view -bs $frac -@ 8 ${dir}/sc_bam/ME022_S6_Spt6_AID_IAA_Rpb3_1_sorted_no_duplicates.bam > ${dir}/sc_bam/Spt6_AID_EF_subset_bams/ME022_S6_Spt6_AID_IAA_Rpb3_1_subsample.bam

frac=$( samtools idxstats ${dir}/sc_bam/ME023_S7_Spt6_AID_DMSO_Rpb3_2_sorted_no_duplicates.bam | cut -f3 | awk 'BEGIN {total=0} {total += $1} END {frac=5000000/total; if (frac > 1) {print 1} else {print frac}}' )
samtools view -bs $frac -@ 8 ${dir}/sc_bam/ME023_S7_Spt6_AID_DMSO_Rpb3_2_sorted_no_duplicates.bam > ${dir}/sc_bam/Spt6_AID_EF_subset_bams/ME023_S7_Spt6_AID_DMSO_Rpb3_2_subsample.bam

frac=$( samtools idxstats ${dir}/sc_bam/ME024_S8_Spt6_AID_IAA_Rpb3_2_sorted_no_duplicates.bam | cut -f3 | awk 'BEGIN {total=0} {total += $1} END {frac=5000000/total; if (frac > 1) {print 1} else {print frac}}' )
samtools view -bs $frac -@ 8 ${dir}/sc_bam/ME024_S8_Spt6_AID_IAA_Rpb3_2_sorted_no_duplicates.bam > ${dir}/sc_bam/Spt6_AID_EF_subset_bams/ME024_S8_Spt6_AID_IAA_Rpb3_2_subsample.bam

frac=$( samtools idxstats ${dir}/sc_bam/ME025_S9_Spt6_AID_DMSO_Spt6_1_sorted_no_duplicates.bam | cut -f3 | awk 'BEGIN {total=0} {total += $1} END {frac=5000000/total; if (frac > 1) {print 1} else {print frac}}' )
samtools view -bs $frac -@ 8 ${dir}/sc_bam/ME025_S9_Spt6_AID_DMSO_Spt6_1_sorted_no_duplicates.bam > ${dir}/sc_bam/Spt6_AID_EF_subset_bams/ME025_S9_Spt6_AID_DMSO_Spt6_1_subsample.bam

frac=$( samtools idxstats ${dir}/sc_bam/ME026_S10_Spt6_AID_IAA_Spt6_1_sorted_no_duplicates.bam | cut -f3 | awk 'BEGIN {total=0} {total += $1} END {frac=5000000/total; if (frac > 1) {print 1} else {print frac}}' )
samtools view -bs $frac -@ 8 ${dir}/sc_bam/ME026_S10_Spt6_AID_IAA_Spt6_1_sorted_no_duplicates.bam > ${dir}/sc_bam/Spt6_AID_EF_subset_bams/ME026_S10_Spt6_AID_IAA_Spt6_1_subsample.bam

frac=$( samtools idxstats ${dir}/sc_bam/ME027_S11_Spt6_AID_DMSO_Spt6_2_sorted_no_duplicates.bam | cut -f3 | awk 'BEGIN {total=0} {total += $1} END {frac=5000000/total; if (frac > 1) {print 1} else {print frac}}' )
samtools view -bs $frac -@ 8 ${dir}/sc_bam/ME027_S11_Spt6_AID_DMSO_Spt6_2_sorted_no_duplicates.bam > ${dir}/sc_bam/Spt6_AID_EF_subset_bams/ME027_S11_Spt6_AID_DMSO_Spt6_2_subsample.bam

frac=$( samtools idxstats ${dir}/sc_bam/ME028_S12_Spt6_AID_IAA_Spt6_2_sorted_no_duplicates.bam | cut -f3 | awk 'BEGIN {total=0} {total += $1} END {frac=5000000/total; if (frac > 1) {print 1} else {print frac}}' )
samtools view -bs $frac -@ 8 ${dir}/sc_bam/ME028_S12_Spt6_AID_IAA_Spt6_2_sorted_no_duplicates.bam > ${dir}/sc_bam/Spt6_AID_EF_subset_bams/ME028_S12_Spt6_AID_IAA_Spt6_2_subsample.bam

frac=$( samtools idxstats ${dir}/sc_bam/ME029_S13_Spt6_AID_DMSO_Spt5_1_sorted_no_duplicates.bam | cut -f3 | awk 'BEGIN {total=0} {total += $1} END {frac=5000000/total; if (frac > 1) {print 1} else {print frac}}' )
samtools view -bs $frac -@ 8 ${dir}/sc_bam/ME029_S13_Spt6_AID_DMSO_Spt5_1_sorted_no_duplicates.bam > ${dir}/sc_bam/Spt6_AID_EF_subset_bams/ME029_S13_Spt6_AID_DMSO_Spt5_1_subsample.bam

frac=$( samtools idxstats ${dir}/sc_bam/ME030_S14_Spt6_AID_IAA_Spt5_1_sorted_no_duplicates.bam | cut -f3 | awk 'BEGIN {total=0} {total += $1} END {frac=5000000/total; if (frac > 1) {print 1} else {print frac}}' )
samtools view -bs $frac -@ 8 ${dir}/sc_bam/ME030_S14_Spt6_AID_IAA_Spt5_1_sorted_no_duplicates.bam > ${dir}/sc_bam/Spt6_AID_EF_subset_bams/ME030_S14_Spt6_AID_IAA_Spt5_1_subsample.bam

frac=$( samtools idxstats ${dir}/sc_bam/ME031_S15_Spt6_AID_DMSO_Spt5_2_sorted_no_duplicates.bam | cut -f3 | awk 'BEGIN {total=0} {total += $1} END {frac=5000000/total; if (frac > 1) {print 1} else {print frac}}' )
samtools view -bs $frac -@ 8 ${dir}/sc_bam/ME031_S15_Spt6_AID_DMSO_Spt5_2_sorted_no_duplicates.bam > ${dir}/sc_bam/Spt6_AID_EF_subset_bams/ME031_S15_Spt6_AID_DMSO_Spt5_2_subsample.bam

frac=$( samtools idxstats ${dir}/sc_bam/ME032_S16_Spt6_AID_IAA_Spt5_2_sorted_no_duplicates.bam | cut -f3 | awk 'BEGIN {total=0} {total += $1} END {frac=5000000/total; if (frac > 1) {print 1} else {print frac}}' )
samtools view -bs $frac -@ 8 ${dir}/sc_bam/ME032_S16_Spt6_AID_IAA_Spt5_2_sorted_no_duplicates.bam > ${dir}/sc_bam/Spt6_AID_EF_subset_bams/ME032_S16_Spt6_AID_IAA_Spt5_2_subsample.bam

frac=$( samtools idxstats ${dir}/sc_bam/ME033_S17_Spt6_AID_DMSO_IgG_1_sorted_no_duplicates.bam | cut -f3 | awk 'BEGIN {total=0} {total += $1} END {frac=5000000/total; if (frac > 1) {print 1} else {print frac}}' )
samtools view -bs $frac -@ 8 ${dir}/sc_bam/ME033_S17_Spt6_AID_DMSO_IgG_1_sorted_no_duplicates.bam > ${dir}/sc_bam/Spt6_AID_EF_subset_bams/ME033_S17_Spt6_AID_DMSO_IgG_1_subsample.bam

frac=$( samtools idxstats ${dir}/sc_bam/ME034_S18_Spt6_AID_IAA_IgG_1_sorted_no_duplicates.bam | cut -f3 | awk 'BEGIN {total=0} {total += $1} END {frac=5000000/total; if (frac > 1) {print 1} else {print frac}}' )
samtools view -bs $frac -@ 8 ${dir}/sc_bam/ME034_S18_Spt6_AID_IAA_IgG_1_sorted_no_duplicates.bam > ${dir}/sc_bam/Spt6_AID_EF_subset_bams/ME034_S18_Spt6_AID_IAA_IgG_1_subsample.bam

frac=$( samtools idxstats ${dir}/sc_bam/ME035_S19_Spt6_AID_DMSO_IgG_2_sorted_no_duplicates.bam | cut -f3 | awk 'BEGIN {total=0} {total += $1} END {frac=5000000/total; if (frac > 1) {print 1} else {print frac}}' )
samtools view -bs $frac -@ 8 ${dir}/sc_bam/ME035_S19_Spt6_AID_DMSO_IgG_2_sorted_no_duplicates.bam > ${dir}/sc_bam/Spt6_AID_EF_subset_bams/ME035_S19_Spt6_AID_DMSO_IgG_2_subsample.bam

frac=$( samtools idxstats ${dir}/sc_bam/ME036_S20_Spt6_AID_IAA_IgG_2_sorted_no_duplicates.bam | cut -f3 | awk 'BEGIN {total=0} {total += $1} END {frac=5000000/total; if (frac > 1) {print 1} else {print frac}}' )
samtools view -bs $frac -@ 8 ${dir}/sc_bam/ME036_S20_Spt6_AID_IAA_IgG_2_sorted_no_duplicates.bam > ${dir}/sc_bam/Spt6_AID_EF_subset_bams/ME036_S20_Spt6_AID_IAA_IgG_2_subsample.bam

frac=$( samtools idxstats ${dir}/sc_bam/ME045_S29_Spt6_AID_DMSO_Input_1_sorted_no_duplicates.bam | cut -f3 | awk 'BEGIN {total=0} {total += $1} END {frac=5000000/total; if (frac > 1) {print 1} else {print frac}}' )
samtools view -bs $frac -@ 8 ${dir}/sc_bam/ME045_S29_Spt6_AID_DMSO_Input_1_sorted_no_duplicates.bam > ${dir}/sc_bam/Spt6_AID_EF_subset_bams/ME045_S29_Spt6_AID_DMSO_Input_1_subsample.bam

frac=$( samtools idxstats ${dir}/sc_bam/ME046_S30_Spt6_AID_IAA_Input_1_sorted_no_duplicates.bam | cut -f3 | awk 'BEGIN {total=0} {total += $1} END {frac=5000000/total; if (frac > 1) {print 1} else {print frac}}' )
samtools view -bs $frac -@ 8 ${dir}/sc_bam/ME046_S30_Spt6_AID_IAA_Input_1_sorted_no_duplicates.bam > ${dir}/sc_bam/Spt6_AID_EF_subset_bams/ME046_S30_Spt6_AID_IAA_Input_1_subsample.bam

frac=$( samtools idxstats ${dir}/sc_bam/ME047_S31_Spt6_AID_DMSO_Input_2_sorted_no_duplicates.bam | cut -f3 | awk 'BEGIN {total=0} {total += $1} END {frac=5000000/total; if (frac > 1) {print 1} else {print frac}}' )
samtools view -bs $frac -@ 8 ${dir}/sc_bam/ME047_S31_Spt6_AID_DMSO_Input_2_sorted_no_duplicates.bam> ${dir}/sc_bam/Spt6_AID_EF_subset_bams/ME047_S31_Spt6_AID_DMSO_Input_2_subsample.bam

frac=$( samtools idxstats ${dir}/sc_bam/ME048_S32_Spt6_AID_IAA_Input_2_sorted_no_duplicates.bam | cut -f3 | awk 'BEGIN {total=0} {total += $1} END {frac=5000000/total; if (frac > 1) {print 1} else {print frac}}' )
samtools view -bs $frac -@ 8 ${dir}/sc_bam/ME048_S32_Spt6_AID_IAA_Input_2_sorted_no_duplicates.bam > ${dir}/sc_bam/Spt6_AID_EF_subset_bams/ME048_S32_Spt6_AID_IAA_Input_2_subsample.bam




#######
# H2B #
#######

cd ${dir}/sc_bam

mkdir H2B_subset_bams

frac=$( samtools idxstats ${dir}/sc_bam/ME049_S1_Spt6_AID_DMSO_H2B_3_sorted_no_duplicates.bam | cut -f3 | awk 'BEGIN {total=0} {total += $1} END {frac=1100000/total; if (frac > 1) {print 1} else {print frac}}' )
samtools view -bs $frac -@ 8 ${dir}/sc_bam/ME049_S1_Spt6_AID_DMSO_H2B_3_sorted_no_duplicates.bam > ${dir}/sc_bam/H2B_subset_bams/ME049_S1_Spt6_AID_DMSO_H2B_3_subsample.bam

frac=$( samtools idxstats ${dir}/sc_bam/ME061_S13_Spt6_AID_DMSO_H2B_2_sorted_no_duplicates.bam | cut -f3 | awk 'BEGIN {total=0} {total += $1} END {frac=1100000/total; if (frac > 1) {print 1} else {print frac}}' )
samtools view -bs $frac -@ 8 ${dir}/sc_bam/ME061_S13_Spt6_AID_DMSO_H2B_2_sorted_no_duplicates.bam > ${dir}/sc_bam/H2B_subset_bams/ME061_S13_Spt6_AID_DMSO_H2B_2_subsample.bam

frac=$( samtools idxstats ${dir}/sc_bam/ME062_S14_Spt6_AID_IAA_H2B_2_sorted_no_duplicates.bam | cut -f3 | awk 'BEGIN {total=0} {total += $1} END {frac=1100000/total; if (frac > 1) {print 1} else {print frac}}' )
samtools view -bs $frac -@ 8 ${dir}/sc_bam/ME062_S14_Spt6_AID_IAA_H2B_2_sorted_no_duplicates.bam > ${dir}/sc_bam/H2B_subset_bams/ME062_S14_Spt6_AID_IAA_H2B_2_subsample.bam

frac=$( samtools idxstats ${dir}/sc_bam/ME115_S1_Spt6_AID_IAA_H2B_3_sorted_no_duplicates.bam | cut -f3 | awk 'BEGIN {total=0} {total += $1} END {frac=1100000/total; if (frac > 1) {print 1} else {print frac}}' )
samtools view -bs $frac -@ 8 ${dir}/sc_bam/ME115_S1_Spt6_AID_IAA_H2B_3_sorted_no_duplicates.bam > ${dir}/sc_bam/H2B_subset_bams/ME115_S1_Spt6_AID_IAA_H2B_3_subsample.bam

frac=$( samtools idxstats ${dir}/sc_bam/ME118_S4_Spt6_AID_DMSO_H2B_1_sorted_no_duplicates.bam | cut -f3 | awk 'BEGIN {total=0} {total += $1} END {frac=1100000/total; if (frac > 1) {print 1} else {print frac}}' )
samtools view -bs $frac -@ 8 ${dir}/sc_bam/ME118_S4_Spt6_AID_DMSO_H2B_1_sorted_no_duplicates.bam > ${dir}/sc_bam/H2B_subset_bams/ME118_S4_Spt6_AID_DMSO_H2B_1_subsample.bam

frac=$( samtools idxstats ${dir}/sc_bam/ME119_S5_Spt6_AID_IAA_H2B_1_sorted_no_duplicates.bam | cut -f3 | awk 'BEGIN {total=0} {total += $1} END {frac=1100000/total; if (frac > 1) {print 1} else {print frac}}' )
samtools view -bs $frac -@ 8 ${dir}/sc_bam/ME119_S5_Spt6_AID_IAA_H2B_1_sorted_no_duplicates.bam > ${dir}/sc_bam/H2B_subset_bams/ME119_S5_Spt6_AID_IAA_H2B_1_subsample.bam

#Need to subset a set of these files for each set of differently subset ChIP samples
#1100000 for H2B
frac=$( samtools idxstats ${dir}/sc_bam/ME130_S16_Spt6_AID_DMSO_Input_1_sorted_no_duplicates.bam | cut -f3 | awk 'BEGIN {total=0} {total += $1} END {frac=1100000/total; if (frac > 1) {print 1} else {print frac}}' )
samtools view -bs $frac -@ 8 ${dir}/sc_bam/ME130_S16_Spt6_AID_DMSO_Input_1_sorted_no_duplicates.bam > ${dir}/sc_bam/H2B_subset_bams/ME130_S16_Spt6_AID_DMSO_Input_1_subsample.bam

frac=$( samtools idxstats ${dir}/sc_bam/ME131_S17_Spt6_AID_IAA_Input_1_sorted_no_duplicates.bam | cut -f3 | awk 'BEGIN {total=0} {total += $1} END {frac=1100000/total; if (frac > 1) {print 1} else {print frac}}' )
samtools view -bs $frac -@ 8 ${dir}/sc_bam/ME131_S17_Spt6_AID_IAA_Input_1_sorted_no_duplicates.bam > ${dir}/sc_bam/H2B_subset_bams/ME131_S17_Spt6_AID_IAA_Input_1_subsample.bam

frac=$( samtools idxstats ${dir}/sc_bam/ME132_S18_Spt6_AID_DMSO_Input_2_sorted_no_duplicates.bam | cut -f3 | awk 'BEGIN {total=0} {total += $1} END {frac=1100000/total; if (frac > 1) {print 1} else {print frac}}' )
samtools view -bs $frac -@ 8 ${dir}/sc_bam/ME132_S18_Spt6_AID_DMSO_Input_2_sorted_no_duplicates.bam > ${dir}/sc_bam/H2B_subset_bams/ME132_S18_Spt6_AID_DMSO_Input_2_subsample.bam

frac=$( samtools idxstats ${dir}/sc_bam/ME133_S19_Spt6_AID_IAA_Input_2_sorted_no_duplicates.bam | cut -f3 | awk 'BEGIN {total=0} {total += $1} END {frac=1100000/total; if (frac > 1) {print 1} else {print frac}}' )
samtools view -bs $frac -@ 8 ${dir}/sc_bam/ME133_S19_Spt6_AID_IAA_Input_2_sorted_no_duplicates.bam > ${dir}/sc_bam/H2B_subset_bams/ME133_S19_Spt6_AID_IAA_Input_2_subsample.bam

frac=$( samtools idxstats ${dir}/sc_bam/ME134_S20_Spt6_AID_DMSO_Input_3_sorted_no_duplicates.bam | cut -f3 | awk 'BEGIN {total=0} {total += $1} END {frac=1100000/total; if (frac > 1) {print 1} else {print frac}}' )
samtools view -bs $frac -@ 8 ${dir}/sc_bam/ME134_S20_Spt6_AID_DMSO_Input_3_sorted_no_duplicates.bam > ${dir}/sc_bam/H2B_subset_bams/ME134_S20_Spt6_AID_DMSO_Input_3_subsample.bam

frac=$( samtools idxstats ${dir}/sc_bam/ME135_S21_Spt6_AID_IAA_Input_3_sorted_no_duplicates.bam | cut -f3 | awk 'BEGIN {total=0} {total += $1} END {frac=1100000/total; if (frac > 1) {print 1} else {print frac}}' )
samtools view -bs $frac -@ 8 ${dir}/sc_bam/ME135_S21_Spt6_AID_IAA_Input_3_sorted_no_duplicates.bam > ${dir}/sc_bam/H2B_subset_bams/ME135_S21_Spt6_AID_IAA_Input_3_subsample.bam




#########
# H2Bub #
#########

cd ${dir}/sc_bam

mkdir H2Bub_subset_bams

frac=$( samtools idxstats ${dir}/sc_bam/ME051_S3_Spt6_AID_DMSO_H2BK123ub_3_sorted_no_duplicates.bam | cut -f3 | awk 'BEGIN {total=0} {total += $1} END {frac=600000/total; if (frac > 1) {print 1} else {print frac}}' )
samtools view -bs $frac -@ 8 ${dir}/sc_bam/ME051_S3_Spt6_AID_DMSO_H2BK123ub_3_sorted_no_duplicates.bam > ${dir}/sc_bam/H2Bub_subset_bams/ME051_S3_Spt6_AID_DMSO_H2BK123ub_3_subsample.bam

frac=$( samtools idxstats ${dir}/sc_bam/ME052_S4_Spt6_AID_IAA_H2BK123ub_3_sorted_no_duplicates.bam | cut -f3 | awk 'BEGIN {total=0} {total += $1} END {frac=600000/total; if (frac > 1) {print 1} else {print frac}}' )
samtools view -bs $frac -@ 8 ${dir}/sc_bam/ME052_S4_Spt6_AID_IAA_H2BK123ub_3_sorted_no_duplicates.bam > ${dir}/sc_bam/H2Bub_subset_bams/ME052_S4_Spt6_AID_IAA_H2BK123ub_3_subsample.bam

frac=$( samtools idxstats ${dir}/sc_bam/ME063_S15_Spt6_AID_DMSO_H2BK123ub_2_sorted_no_duplicates.bam | cut -f3 | awk 'BEGIN {total=0} {total += $1} END {frac=600000/total; if (frac > 1) {print 1} else {print frac}}' )
samtools view -bs $frac -@ 8 ${dir}/sc_bam/ME063_S15_Spt6_AID_DMSO_H2BK123ub_2_sorted_no_duplicates.bam > ${dir}/sc_bam/H2Bub_subset_bams/ME063_S15_Spt6_AID_DMSO_H2BK123ub_2_subsample.bam

frac=$( samtools idxstats ${dir}/sc_bam/ME064_S16_Spt6_AID_IAA_H2BK123ub_2_sorted_no_duplicates.bam | cut -f3 | awk 'BEGIN {total=0} {total += $1} END {frac=600000/total; if (frac > 1) {print 1} else {print frac}}' )
samtools view -bs $frac -@ 8 ${dir}/sc_bam/ME064_S16_Spt6_AID_IAA_H2BK123ub_2_sorted_no_duplicates.bam > ${dir}/sc_bam/H2Bub_subset_bams/ME064_S16_Spt6_AID_IAA_H2BK123ub_2_subsample.bam

frac=$( samtools idxstats ${dir}/sc_bam/ME120_S6_Spt6_AID_DMSO_H2BK123ub_1_sorted_no_duplicates.bam | cut -f3 | awk 'BEGIN {total=0} {total += $1} END {frac=600000/total; if (frac > 1) {print 1} else {print frac}}' )
samtools view -bs $frac -@ 8 ${dir}/sc_bam/ME120_S6_Spt6_AID_DMSO_H2BK123ub_1_sorted_no_duplicates.bam > ${dir}/sc_bam/H2Bub_subset_bams/ME120_S6_Spt6_AID_DMSO_H2BK123ub_1_subsample.bam

frac=$( samtools idxstats ${dir}/sc_bam/ME121_S7_Spt6_AID_IAA_H2BK123ub_1_sorted_no_duplicates.bam | cut -f3 | awk 'BEGIN {total=0} {total += $1} END {frac=600000/total; if (frac > 1) {print 1} else {print frac}}' )
samtools view -bs $frac -@ 8 ${dir}/sc_bam/ME121_S7_Spt6_AID_IAA_H2BK123ub_1_sorted_no_duplicates.bam > ${dir}/sc_bam/H2Bub_subset_bams/ME121_S7_Spt6_AID_IAA_H2BK123ub_1_subsample.bam

#Need to subset a set of these files for each set of differently subset ChIP samples
# 600000 for H2Bub
frac=$( samtools idxstats ${dir}/sc_bam/ME130_S16_Spt6_AID_DMSO_Input_1_sorted_no_duplicates.bam | cut -f3 | awk 'BEGIN {total=0} {total += $1} END {frac=600000/total; if (frac > 1) {print 1} else {print frac}}' )
samtools view -bs $frac -@ 8 ${dir}/sc_bam/ME130_S16_Spt6_AID_DMSO_Input_1_sorted_no_duplicates.bam > ${dir}/sc_bam/H2Bub_subset_bams/ME130_S16_Spt6_AID_DMSO_Input_1_subsample.bam

frac=$( samtools idxstats ${dir}/sc_bam/ME131_S17_Spt6_AID_IAA_Input_1_sorted_no_duplicates.bam | cut -f3 | awk 'BEGIN {total=0} {total += $1} END {frac=600000/total; if (frac > 1) {print 1} else {print frac}}' )
samtools view -bs $frac -@ 8 ${dir}/sc_bam/ME131_S17_Spt6_AID_IAA_Input_1_sorted_no_duplicates.bam > ${dir}/sc_bam/H2Bub_subset_bams/ME131_S17_Spt6_AID_IAA_Input_1_subsample.bam

frac=$( samtools idxstats ${dir}/sc_bam/ME132_S18_Spt6_AID_DMSO_Input_2_sorted_no_duplicates.bam | cut -f3 | awk 'BEGIN {total=0} {total += $1} END {frac=600000/total; if (frac > 1) {print 1} else {print frac}}' )
samtools view -bs $frac -@ 8 ${dir}/sc_bam/ME132_S18_Spt6_AID_DMSO_Input_2_sorted_no_duplicates.bam > ${dir}/sc_bam/H2Bub_subset_bams/ME132_S18_Spt6_AID_DMSO_Input_2_subsample.bam

frac=$( samtools idxstats ${dir}/sc_bam/ME133_S19_Spt6_AID_IAA_Input_2_sorted_no_duplicates.bam | cut -f3 | awk 'BEGIN {total=0} {total += $1} END {frac=600000/total; if (frac > 1) {print 1} else {print frac}}' )
samtools view -bs $frac -@ 8 ${dir}/sc_bam/ME133_S19_Spt6_AID_IAA_Input_2_sorted_no_duplicates.bam > ${dir}/sc_bam/H2Bub_subset_bams/ME133_S19_Spt6_AID_IAA_Input_2_subsample.bam

frac=$( samtools idxstats ${dir}/sc_bam/ME134_S20_Spt6_AID_DMSO_Input_3_sorted_no_duplicates.bam | cut -f3 | awk 'BEGIN {total=0} {total += $1} END {frac=600000/total; if (frac > 1) {print 1} else {print frac}}' )
samtools view -bs $frac -@ 8 ${dir}/sc_bam/ME134_S20_Spt6_AID_DMSO_Input_3_sorted_no_duplicates.bam > ${dir}/sc_bam/H2Bub_subset_bams/ME134_S20_Spt6_AID_DMSO_Input_3_subsample.bam

frac=$( samtools idxstats ${dir}/sc_bam/ME135_S21_Spt6_AID_IAA_Input_3_sorted_no_duplicates.bam | cut -f3 | awk 'BEGIN {total=0} {total += $1} END {frac=600000/total; if (frac > 1) {print 1} else {print frac}}' )
samtools view -bs $frac -@ 8 ${dir}/sc_bam/ME135_S21_Spt6_AID_IAA_Input_3_sorted_no_duplicates.bam > ${dir}/sc_bam/H2Bub_subset_bams/ME135_S21_Spt6_AID_IAA_Input_3_subsample.bam




######
# H3 #
######

cd ${dir}/sc_bam

mkdir H3_subset_bams

frac=$( samtools idxstats ${dir}/sc_bam/ME116_S2_Spt6_AID_DMSO_H3_2_sorted_no_duplicates.bam | cut -f3 | awk 'BEGIN {total=0} {total += $1} END {frac=1800000/total; if (frac > 1) {print 1} else {print frac}}' )
samtools view -bs $frac -@ 8 ${dir}/sc_bam/ME116_S2_Spt6_AID_DMSO_H3_2_sorted_no_duplicates.bam > ${dir}/sc_bam/H3_subset_bams/ME116_S2_Spt6_AID_DMSO_H3_2_subsample.bam

frac=$( samtools idxstats ${dir}/sc_bam/ME066_S18_Spt6_AID_IAA_H3_2_sorted_no_duplicates.bam | cut -f3 | awk 'BEGIN {total=0} {total += $1} END {frac=1800000/total; if (frac > 1) {print 1} else {print frac}}' )
samtools view -bs $frac -@ 8 ${dir}/sc_bam/ME066_S18_Spt6_AID_IAA_H3_2_sorted_no_duplicates.bam > ${dir}/sc_bam/H3_subset_bams/ME066_S18_Spt6_AID_IAA_H3_2_subsample.bam

frac=$( samtools idxstats ${dir}/sc_bam/ME122_S8_Spt6_AID_DMSO_H3_1_sorted_no_duplicates.bam | cut -f3 | awk 'BEGIN {total=0} {total += $1} END {frac=1800000/total; if (frac > 1) {print 1} else {print frac}}' )
samtools view -bs $frac -@ 8 ${dir}/sc_bam/ME122_S8_Spt6_AID_DMSO_H3_1_sorted_no_duplicates.bam > ${dir}/sc_bam/H3_subset_bams/ME122_S8_Spt6_AID_DMSO_H3_1_subsample.bam

frac=$( samtools idxstats ${dir}/sc_bam/ME123_S9_Spt6_AID_IAA_H3_1_sorted_no_duplicates.bam | cut -f3 | awk 'BEGIN {total=0} {total += $1} END {frac=1800000/total; if (frac > 1) {print 1} else {print frac}}' )
samtools view -bs $frac -@ 8 ${dir}/sc_bam/ME123_S9_Spt6_AID_IAA_H3_1_sorted_no_duplicates.bam > ${dir}/sc_bam/H3_subset_bams/ME123_S9_Spt6_AID_IAA_H3_1_subsample.bam

#Need to subset a set of these files for each set of differently subset ChIP samples
# 1800000 for H3
frac=$( samtools idxstats ${dir}/sc_bam/ME130_S16_Spt6_AID_DMSO_Input_1_sorted_no_duplicates.bam | cut -f3 | awk 'BEGIN {total=0} {total += $1} END {frac=1800000/total; if (frac > 1) {print 1} else {print frac}}' )
samtools view -bs $frac -@ 8 ${dir}/sc_bam/ME130_S16_Spt6_AID_DMSO_Input_1_sorted_no_duplicates.bam > ${dir}/sc_bam/H3_subset_bams/ME130_S16_Spt6_AID_DMSO_Input_1_subsample.bam

frac=$( samtools idxstats ${dir}/sc_bam/ME131_S17_Spt6_AID_IAA_Input_1_sorted_no_duplicates.bam | cut -f3 | awk 'BEGIN {total=0} {total += $1} END {frac=1800000/total; if (frac > 1) {print 1} else {print frac}}' )
samtools view -bs $frac -@ 8 ${dir}/sc_bam/ME131_S17_Spt6_AID_IAA_Input_1_sorted_no_duplicates.bam > ${dir}/sc_bam/H3_subset_bams/ME131_S17_Spt6_AID_IAA_Input_1_subsample.bam

frac=$( samtools idxstats ${dir}/sc_bam/ME132_S18_Spt6_AID_DMSO_Input_2_sorted_no_duplicates.bam | cut -f3 | awk 'BEGIN {total=0} {total += $1} END {frac=1800000/total; if (frac > 1) {print 1} else {print frac}}' )
samtools view -bs $frac -@ 8 ${dir}/sc_bam/ME132_S18_Spt6_AID_DMSO_Input_2_sorted_no_duplicates.bam > ${dir}/sc_bam/H3_subset_bams/ME132_S18_Spt6_AID_DMSO_Input_2_subsample.bam

frac=$( samtools idxstats ${dir}/sc_bam/ME133_S19_Spt6_AID_IAA_Input_2_sorted_no_duplicates.bam | cut -f3 | awk 'BEGIN {total=0} {total += $1} END {frac=1800000/total; if (frac > 1) {print 1} else {print frac}}' )
samtools view -bs $frac -@ 8 ${dir}/sc_bam/ME133_S19_Spt6_AID_IAA_Input_2_sorted_no_duplicates.bam > ${dir}/sc_bam/H3_subset_bams/ME133_S19_Spt6_AID_IAA_Input_2_subsample.bam

frac=$( samtools idxstats ${dir}/sc_bam/ME134_S20_Spt6_AID_DMSO_Input_3_sorted_no_duplicates.bam | cut -f3 | awk 'BEGIN {total=0} {total += $1} END {frac=1800000/total; if (frac > 1) {print 1} else {print frac}}' )
samtools view -bs $frac -@ 8 ${dir}/sc_bam/ME134_S20_Spt6_AID_DMSO_Input_3_sorted_no_duplicates.bam > ${dir}/sc_bam/H3_subset_bams/ME134_S20_Spt6_AID_DMSO_Input_3_subsample.bam

frac=$( samtools idxstats ${dir}/sc_bam/ME135_S21_Spt6_AID_IAA_Input_3_sorted_no_duplicates.bam | cut -f3 | awk 'BEGIN {total=0} {total += $1} END {frac=1800000/total; if (frac > 1) {print 1} else {print frac}}' )
samtools view -bs $frac -@ 8 ${dir}/sc_bam/ME135_S21_Spt6_AID_IAA_Input_3_sorted_no_duplicates.bam > ${dir}/sc_bam/H3_subset_bams/ME135_S21_Spt6_AID_IAA_Input_3_subsample.bam


###########
# H3K4me2 #
###########

cd ${dir}/sc_bam

mkdir H3K4me2_subset_bams

frac=$( samtools idxstats ${dir}/sc_bam/ME055_S7_Spt6_AID_DMSO_H3K4me2_3_sorted_no_duplicates.bam | cut -f3 | awk 'BEGIN {total=0} {total += $1} END {frac=1000000/total; if (frac > 1) {print 1} else {print frac}}' )
samtools view -bs $frac -@ 8 ${dir}/sc_bam/ME055_S7_Spt6_AID_DMSO_H3K4me2_3_sorted_no_duplicates.bam > ${dir}/sc_bam/H3K4me2_subset_bams/ME055_S7_Spt6_AID_DMSO_H3K4me2_3_subsample.bam

frac=$( samtools idxstats ${dir}/sc_bam/ME056_S8_Spt6_AID_IAA_H3K4me2_3_sorted_no_duplicates.bam | cut -f3 | awk 'BEGIN {total=0} {total += $1} END {frac=1000000/total; if (frac > 1) {print 1} else {print frac}}' )
samtools view -bs $frac -@ 8 ${dir}/sc_bam/ME056_S8_Spt6_AID_IAA_H3K4me2_3_sorted_no_duplicates.bam > ${dir}/sc_bam/H3K4me2_subset_bams/ME056_S8_Spt6_AID_IAA_H3K4me2_3_subsample.bam

frac=$( samtools idxstats ${dir}/sc_bam/ME068_S20_Spt6_AID_IAA_H3K4me2_2_sorted_no_duplicates.bam | cut -f3 | awk 'BEGIN {total=0} {total += $1} END {frac=1000000/total; if (frac > 1) {print 1} else {print frac}}' )
samtools view -bs $frac -@ 8 ${dir}/sc_bam/ME068_S20_Spt6_AID_IAA_H3K4me2_2_sorted_no_duplicates.bam > ${dir}/sc_bam/H3K4me2_subset_bams/ME068_S20_Spt6_AID_IAA_H3K4me2_2_subsample.bam

frac=$( samtools idxstats ${dir}/sc_bam/ME117_S3_Spt6_AID_DMSO_H3K3me2_2_sorted_no_duplicates.bam | cut -f3 | awk 'BEGIN {total=0} {total += $1} END {frac=1000000/total; if (frac > 1) {print 1} else {print frac}}' )
samtools view -bs $frac -@ 8 ${dir}/sc_bam/ME117_S3_Spt6_AID_DMSO_H3K3me2_2_sorted_no_duplicates.bam > ${dir}/sc_bam/H3K4me2_subset_bams/ME117_S3_Spt6_AID_DMSO_H3K3me2_2_subsample.bam

frac=$( samtools idxstats ${dir}/sc_bam/ME124_S10_Spt6_AID_DMSO_H3K3me2_1_sorted_no_duplicates.bam | cut -f3 | awk 'BEGIN {total=0} {total += $1} END {frac=1000000/total; if (frac > 1) {print 1} else {print frac}}' )
samtools view -bs $frac -@ 8 ${dir}/sc_bam/ME124_S10_Spt6_AID_DMSO_H3K3me2_1_sorted_no_duplicates.bam > ${dir}/sc_bam/H3K4me2_subset_bams/ME124_S10_Spt6_AID_DMSO_H3K4me2_1_subsample.bam

frac=$( samtools idxstats ${dir}/sc_bam/ME125_S11_Spt6_AID_IAA_H3K3me2_1_sorted_no_duplicates.bam | cut -f3 | awk 'BEGIN {total=0} {total += $1} END {frac=1000000/total; if (frac > 1) {print 1} else {print frac}}' )
samtools view -bs $frac -@ 8 ${dir}/sc_bam/ME125_S11_Spt6_AID_IAA_H3K3me2_1_sorted_no_duplicates.bam > ${dir}/sc_bam/H3K4me2_subset_bams/ME125_S11_Spt6_AID_IAA_H3K4me2_1_subsample.bam

#Need to subset a set of these files for each set of differently subset ChIP samples
# 1000000 for H3K4me2
frac=$( samtools idxstats ${dir}/sc_bam/ME130_S16_Spt6_AID_DMSO_Input_1_sorted_no_duplicates.bam | cut -f3 | awk 'BEGIN {total=0} {total += $1} END {frac=1000000/total; if (frac > 1) {print 1} else {print frac}}' )
samtools view -bs $frac -@ 8 ${dir}/sc_bam/ME130_S16_Spt6_AID_DMSO_Input_1_sorted_no_duplicates.bam > ${dir}/sc_bam/H3K4me2_subset_bams/ME130_S16_Spt6_AID_DMSO_Input_1_subsample.bam

frac=$( samtools idxstats ${dir}/sc_bam/ME131_S17_Spt6_AID_IAA_Input_1_sorted_no_duplicates.bam | cut -f3 | awk 'BEGIN {total=0} {total += $1} END {frac=1000000/total; if (frac > 1) {print 1} else {print frac}}' )
samtools view -bs $frac -@ 8 ${dir}/sc_bam/ME131_S17_Spt6_AID_IAA_Input_1_sorted_no_duplicates.bam > ${dir}/sc_bam/H3K4me2_subset_bams/ME131_S17_Spt6_AID_IAA_Input_1_subsample.bam

frac=$( samtools idxstats ${dir}/sc_bam/ME132_S18_Spt6_AID_DMSO_Input_2_sorted_no_duplicates.bam | cut -f3 | awk 'BEGIN {total=0} {total += $1} END {frac=1000000/total; if (frac > 1) {print 1} else {print frac}}' )
samtools view -bs $frac -@ 8 ${dir}/sc_bam/ME132_S18_Spt6_AID_DMSO_Input_2_sorted_no_duplicates.bam > ${dir}/sc_bam/H3K4me2_subset_bams/ME132_S18_Spt6_AID_DMSO_Input_2_subsample.bam

frac=$( samtools idxstats ${dir}/sc_bam/ME133_S19_Spt6_AID_IAA_Input_2_sorted_no_duplicates.bam | cut -f3 | awk 'BEGIN {total=0} {total += $1} END {frac=1000000/total; if (frac > 1) {print 1} else {print frac}}' )
samtools view -bs $frac -@ 8 ${dir}/sc_bam/ME133_S19_Spt6_AID_IAA_Input_2_sorted_no_duplicates.bam > ${dir}/sc_bam/H3K4me2_subset_bams/ME133_S19_Spt6_AID_IAA_Input_2_subsample.bam

frac=$( samtools idxstats ${dir}/sc_bam/ME134_S20_Spt6_AID_DMSO_Input_3_sorted_no_duplicates.bam | cut -f3 | awk 'BEGIN {total=0} {total += $1} END {frac=1000000/total; if (frac > 1) {print 1} else {print frac}}' )
samtools view -bs $frac -@ 8 ${dir}/sc_bam/ME134_S20_Spt6_AID_DMSO_Input_3_sorted_no_duplicates.bam > ${dir}/sc_bam/H3K4me2_subset_bams/ME134_S20_Spt6_AID_DMSO_Input_3_subsample.bam

frac=$( samtools idxstats ${dir}/sc_bam/ME135_S21_Spt6_AID_IAA_Input_3_sorted_no_duplicates.bam | cut -f3 | awk 'BEGIN {total=0} {total += $1} END {frac=1000000/total; if (frac > 1) {print 1} else {print frac}}' )
samtools view -bs $frac -@ 8 ${dir}/sc_bam/ME135_S21_Spt6_AID_IAA_Input_3_sorted_no_duplicates.bam > ${dir}/sc_bam/H3K4me2_subset_bams/ME135_S21_Spt6_AID_IAA_Input_3_subsample.bam





###########
# H3K4me3 #
###########

cd ${dir}/sc_bam

mkdir H3K4me3_subset_bams

frac=$( samtools idxstats ${dir}/sc_bam/ME057_S9_Spt6_AID_DMSO_H3K4me3_3_sorted_no_duplicates.bam | cut -f3 | awk 'BEGIN {total=0} {total += $1} END {frac=1800000/total; if (frac > 1) {print 1} else {print frac}}' )
samtools view -bs $frac -@ 8 ${dir}/sc_bam/ME057_S9_Spt6_AID_DMSO_H3K4me3_3_sorted_no_duplicates.bam > ${dir}/sc_bam/H3K4me3_subset_bams/ME057_S9_Spt6_AID_DMSO_H3K4me3_3_subsample.bam

frac=$( samtools idxstats ${dir}/sc_bam/ME069_S21_Spt6_AID_DMSO_H3K4me3_2_sorted_no_duplicates.bam | cut -f3 | awk 'BEGIN {total=0} {total += $1} END {frac=1800000/total; if (frac > 1) {print 1} else {print frac}}' )
samtools view -bs $frac -@ 8 ${dir}/sc_bam/ME069_S21_Spt6_AID_DMSO_H3K4me3_2_sorted_no_duplicates.bam > ${dir}/sc_bam/H3K4me3_subset_bams/ME069_S21_Spt6_AID_DMSO_H3K4me3_2_subsample.bam

frac=$( samtools idxstats ${dir}/sc_bam/ME070_S22_Spt6_AID_IAA_H3K4me3_2_sorted_no_duplicates.bam | cut -f3 | awk 'BEGIN {total=0} {total += $1} END {frac=1800000/total; if (frac > 1) {print 1} else {print frac}}' )
samtools view -bs $frac -@ 8 ${dir}/sc_bam/ME070_S22_Spt6_AID_IAA_H3K4me3_2_sorted_no_duplicates.bam > ${dir}/sc_bam/H3K4me3_subset_bams/ME070_S22_Spt6_AID_IAA_H3K4me3_2_subsample.bam

frac=$( samtools idxstats ${dir}/sc_bam/ME126_S12_Spt6_AID_DMSO_H3K3me3_1_sorted_no_duplicates.bam | cut -f3 | awk 'BEGIN {total=0} {total += $1} END {frac=1800000/total; if (frac > 1) {print 1} else {print frac}}' )
samtools view -bs $frac -@ 8 ${dir}/sc_bam/ME126_S12_Spt6_AID_DMSO_H3K3me3_1_sorted_no_duplicates.bam > ${dir}/sc_bam/H3K4me3_subset_bams/ME126_S12_Spt6_AID_DMSO_H3K4me3_1_subsample.bam

frac=$( samtools idxstats ${dir}/sc_bam/ME127_S13_Spt6_AID_IAA_H3K3me3_1_sorted_no_duplicates.bam | cut -f3 | awk 'BEGIN {total=0} {total += $1} END {frac=1800000/total; if (frac > 1) {print 1} else {print frac}}' )
samtools view -bs $frac -@ 8 ${dir}/sc_bam/ME127_S13_Spt6_AID_IAA_H3K3me3_1_sorted_no_duplicates.bam > ${dir}/sc_bam/H3K4me3_subset_bams/ME127_S13_Spt6_AID_IAA_H3K4me3_1_subsample.bam

frac=$( samtools idxstats ${dir}/sc_bam/ME145_S8_Spt6_AID_IAA_H3K4me3_3_sorted_no_duplicates.bam | cut -f3 | awk 'BEGIN {total=0} {total += $1} END {frac=1800000/total; if (frac > 1) {print 1} else {print frac}}' )
samtools view -bs $frac -@ 8 ${dir}/sc_bam/ME145_S8_Spt6_AID_IAA_H3K4me3_3_sorted_no_duplicates.bam > ${dir}/sc_bam/H3K4me3_subset_bams/ME145_S8_Spt6_AID_IAA_H3K4me3_3_subsample.bam

#Need to subset a set of these files for each set of differently subset ChIP samples
# 1800000 for H3K4me3
frac=$( samtools idxstats ${dir}/sc_bam/ME130_S16_Spt6_AID_DMSO_Input_1_sorted_no_duplicates.bam | cut -f3 | awk 'BEGIN {total=0} {total += $1} END {frac=1800000/total; if (frac > 1) {print 1} else {print frac}}' )
samtools view -bs $frac -@ 8 ${dir}/sc_bam/ME130_S16_Spt6_AID_DMSO_Input_1_sorted_no_duplicates.bam > ${dir}/sc_bam/H3K4me3_subset_bams/ME130_S16_Spt6_AID_DMSO_Input_1_subsample.bam

frac=$( samtools idxstats ${dir}/sc_bam/ME131_S17_Spt6_AID_IAA_Input_1_sorted_no_duplicates.bam | cut -f3 | awk 'BEGIN {total=0} {total += $1} END {frac=1800000/total; if (frac > 1) {print 1} else {print frac}}' )
samtools view -bs $frac -@ 8 ${dir}/sc_bam/ME131_S17_Spt6_AID_IAA_Input_1_sorted_no_duplicates.bam > ${dir}/sc_bam/H3K4me3_subset_bams/ME131_S17_Spt6_AID_IAA_Input_1_subsample.bam

frac=$( samtools idxstats ${dir}/sc_bam/ME132_S18_Spt6_AID_DMSO_Input_2_sorted_no_duplicates.bam | cut -f3 | awk 'BEGIN {total=0} {total += $1} END {frac=1800000/total; if (frac > 1) {print 1} else {print frac}}' )
samtools view -bs $frac -@ 8 ${dir}/sc_bam/ME132_S18_Spt6_AID_DMSO_Input_2_sorted_no_duplicates.bam > ${dir}/sc_bam/H3K4me3_subset_bams/ME132_S18_Spt6_AID_DMSO_Input_2_subsample.bam

frac=$( samtools idxstats ${dir}/sc_bam/ME133_S19_Spt6_AID_IAA_Input_2_sorted_no_duplicates.bam | cut -f3 | awk 'BEGIN {total=0} {total += $1} END {frac=1800000/total; if (frac > 1) {print 1} else {print frac}}' )
samtools view -bs $frac -@ 8 ${dir}/sc_bam/ME133_S19_Spt6_AID_IAA_Input_2_sorted_no_duplicates.bam > ${dir}/sc_bam/H3K4me3_subset_bams/ME133_S19_Spt6_AID_IAA_Input_2_subsample.bam

frac=$( samtools idxstats ${dir}/sc_bam/ME134_S20_Spt6_AID_DMSO_Input_3_sorted_no_duplicates.bam | cut -f3 | awk 'BEGIN {total=0} {total += $1} END {frac=1800000/total; if (frac > 1) {print 1} else {print frac}}' )
samtools view -bs $frac -@ 8 ${dir}/sc_bam/ME134_S20_Spt6_AID_DMSO_Input_3_sorted_no_duplicates.bam > ${dir}/sc_bam/H3K4me3_subset_bams/ME134_S20_Spt6_AID_DMSO_Input_3_subsample.bam

frac=$( samtools idxstats ${dir}/sc_bam/ME135_S21_Spt6_AID_IAA_Input_3_sorted_no_duplicates.bam | cut -f3 | awk 'BEGIN {total=0} {total += $1} END {frac=1800000/total; if (frac > 1) {print 1} else {print frac}}' )
samtools view -bs $frac -@ 8 ${dir}/sc_bam/ME135_S21_Spt6_AID_IAA_Input_3_sorted_no_duplicates.bam > ${dir}/sc_bam/H3K4me3_subset_bams/ME135_S21_Spt6_AID_IAA_Input_3_subsample.bam


