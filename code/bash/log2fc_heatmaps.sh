

file_length=`wc -l Scer_transcripts_w_verifiedORFs-nonoverlapping_decending_quartiles_all.bed  | awk '{print $1}'`
heatmap_height=`expr "$file_length" / 100`

computeMatrix reference-point \
--referencePoint "TSS" -b 500 -a 5000 \
-S log2fc_Spt6_AID_Rpb3.bw \
log2fc_Spt6_AID_Spt5.bw \
log2fc_Spt6_AID_Spt6.bw \
log2fc_Spt6_AID_Paf1.bw \
log2fc_Spt6_AID_Rtf1.bw \
log2fc_Spt6_AID_H2B.bw \
log2fc_Spt6_AID_H2BK123ub.bw \
log2fc_Spt6_AID_H3.bw \
log2fc_Spt6_AID_H3K4me2.bw \
log2fc_Spt6_AID_H3K4me3.bw \
log2fc_spt6_50_Rpb3.bw \
log2fc_spt6_50_Spt5.bw \
log2fc_spt6_50_Spt6.bw \
log2fc_spt6_50_Paf1.bw \
-R Scer_transcripts_w_verifiedORFs-nonoverlapping_decending_quartiles_all.bed \
--binSize 25 \
--missingDataAsZero \
--sortUsing region_length \
--averageTypeBins mean \
--numberOfProcessors "max" \
-out Scer_transcripts_w_verifiedORFs-nonoverlapping_decending_quartiles_all_matrix.gz


plotHeatmap -m Scer_transcripts_w_verifiedORFs-nonoverlapping_decending_quartiles_all_matrix.gz \
-out Scer_transcripts_w_verifiedORFs-nonoverlapping_decending_quartiles_all_log2fc2.png \
--dpi 300 \
--sortUsing region_length \
--missingDataColor 1 \
--sortRegions ascend \
--colorMap 'seismic' \
--zMin -2 \
--zMax 2 \
--whatToShow 'plot, heatmap and colorbar' \
--heatmapHeight "$heatmap_height" \
--heatmapWidth 12


plotHeatmap -m Scer_transcripts_w_verifiedORFs-nonoverlapping_decending_quartiles_all_matrix.gz \
-out Scer_transcripts_w_verifiedORFs-nonoverlapping_decending_quartiles_all_log2fc3.png \
--dpi 300 \
--sortUsing region_length \
--missingDataColor 1 \
--sortRegions ascend \
--colorMap 'seismic' \
--zMin -3 \
--zMax 3 \
--whatToShow 'plot, heatmap and colorbar' \
--heatmapHeight "$heatmap_height" \
--heatmapWidth 12


plotHeatmap -m Scer_transcripts_w_verifiedORFs-nonoverlapping_decending_quartiles_all_matrix.gz \
-out Scer_transcripts_w_verifiedORFs-nonoverlapping_decending_quartiles_all_log2fc4.png \
--dpi 300 \
--sortUsing region_length \
--missingDataColor 1 \
--sortRegions ascend \
--colorMap 'seismic' \
--zMin -4 \
--zMax 4 \
--whatToShow 'plot, heatmap and colorbar' \
--heatmapHeight "$heatmap_height" \
--heatmapWidth 12


plotHeatmap -m Scer_transcripts_w_verifiedORFs-nonoverlapping_decending_quartiles_all_matrix.gz \
-out Scer_transcripts_w_verifiedORFs-nonoverlapping_decending_quartiles_all_log2fc5.png \
--dpi 300 \
--sortUsing region_length \
--missingDataColor 1 \
--sortRegions ascend \
--colorMap 'seismic' \
--zMin -5 \
--zMax 5 \
--whatToShow 'plot, heatmap and colorbar' \
--heatmapHeight "$heatmap_height" \
--heatmapWidth 12


plotHeatmap -m Scer_transcripts_w_verifiedORFs-nonoverlapping_decending_quartiles_all_matrix.gz \
-out Scer_transcripts_w_verifiedORFs-nonoverlapping_decending_quartiles_all_log2fc7.png \
--dpi 300 \
--sortUsing region_length \
--missingDataColor 1 \
--sortRegions ascend \
--colorMap 'seismic' \
--zMin -7 \
--zMax 7 \
--whatToShow 'plot, heatmap and colorbar' \
--heatmapHeight "$heatmap_height" \
--heatmapWidth 12


plotHeatmap -m Scer_transcripts_w_verifiedORFs-nonoverlapping_decending_quartiles_all_matrix.gz \
-out Scer_transcripts_w_verifiedORFs-nonoverlapping_decending_quartiles_all_log2fc10.png \
--dpi 300 \
--sortUsing region_length \
--missingDataColor 1 \
--sortRegions ascend \
--colorMap 'seismic' \
--zMin -10 \
--zMax 10 \
--whatToShow 'plot, heatmap and colorbar' \
--heatmapHeight "$heatmap_height" \
--heatmapWidth 12






