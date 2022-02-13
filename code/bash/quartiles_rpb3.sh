
file_length=`wc -l Scer_transcripts_w_verifiedORFs-nonoverlapping.bed  | awk '{print $1}'`
heatmap_height=`expr "$file_length" / 100`


computeMatrix scale-regions \
-S WT_Rpb3.bw \
-R Scer_transcripts_w_verifiedORFs-nonoverlapping.bed \
--binSize 25 \
--missingDataAsZero \
--averageTypeBins "mean" \
--numberOfProcessors "max" \
-out plus1nuc_CDS_CPS_Rpb3_Only_WT_matrix.gz


plotHeatmap -m plus1nuc_CDS_CPS_Rpb3_Only_WT_matrix.gz \
-out plus1nuc_CDS_CPS_Rpb3_Only_WT.png \
--dpi 300 \
--sortUsing "mean" \
--missingDataColor 1 \
--sortRegions "descend" \
--colorMap "Greys" \
--whatToShow 'plot, heatmap and colorbar' \
--heatmapHeight "$heatmap_height" \
--outFileSortedRegions Scer_transcripts_w_verifiedORFs-nonoverlapping_decending.bed \
--heatmapWidth 10



number_per_quartile=`expr "$file_length" / 4`

grep "^#" Scer_transcripts_w_verifiedORFs-nonoverlapping_decending.bed > header.txt

grep -v "^#" Scer_transcripts_w_verifiedORFs-nonoverlapping_decending.bed > body.txt


rm quartile_*.bed


head -n "$number_per_quartile" body.txt \
| awk '{print $1 "\t" $2 "\t" $3 "\t" $4 "\t" $5 "\t" $6 "\t" $7 "\t" $8 "\t" $9 "\t" $10 "\t" $11 "\t" $12 "\t" "cluster_0"}' > quartile_0.bed

head -n `expr "$number_per_quartile" \* 2` body.txt \
| tail -n "$number_per_quartile" \
| awk '{print $1 "\t" $2 "\t" $3 "\t" $4 "\t" $5 "\t" $6 "\t" $7 "\t" $8 "\t" $9 "\t" $10 "\t" $11 "\t" $12 "\t" "cluster_1"}' > quartile_1.bed

head -n `expr "$number_per_quartile" \* 3` body.txt \
| tail -n "$number_per_quartile" \
| awk '{print $1 "\t" $2 "\t" $3 "\t" $4 "\t" $5 "\t" $6 "\t" $7 "\t" $8 "\t" $9 "\t" $10 "\t" $11 "\t" $12 "\t" "cluster_2"}' > quartile_2.bed

head -n `expr "$number_per_quartile" \* 4` body.txt \
| tail -n "$number_per_quartile" \
| awk '{print $1 "\t" $2 "\t" $3 "\t" $4 "\t" $5 "\t" $6 "\t" $7 "\t" $8 "\t" $9 "\t" $10 "\t" $11 "\t" $12 "\t" "cluster_3"}' > quartile_3.bed

cat header.txt quartile_*.bed > Scer_transcripts_w_verifiedORFs-nonoverlapping_decending_quartiles_all.bed



computeMatrix reference-point \
--referencePoint "TSS" -b 500 -a 5000 \
-S WT_Rpb3.bw \
-R Scer_transcripts_w_verifiedORFs-nonoverlapping_decending_quartiles_all.bed \
--binSize 25 \
--missingDataAsZero \
--sortUsing region_length \
--averageTypeBins mean \
--nanAfterEnd \
--numberOfProcessors "max" \
-out plus1nuc_CDS_CPS_quartiles_all_Rpb3_Only_WT_matrix.gz

plotHeatmap -m plus1nuc_CDS_CPS_quartiles_all_Rpb3_Only_WT_matrix.gz \
-out plus1nuc_CDS_CPS_quartiles_all_Rpb3_Only_WT.png \
--dpi 300 \
--sortUsing region_length \
--missingDataColor 1 \
--sortRegions ascend \
--colorMap "Greys" \
--whatToShow 'plot, heatmap and colorbar' \
--heatmapHeight "$heatmap_height" \
--heatmapWidth 10
