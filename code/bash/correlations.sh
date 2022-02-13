


#####################
# SUMMARIZE BIGWIGS #
#####################

multiBigwigSummary BED-file \
	--BED Scer_transcripts_w_verifiedORFs-nonoverlapping_decending_quartiles_all.bed \
	--bwfiles Spt6_AID_DMSO_H2BK123ub_1_ncis_normalized.bw \
	Spt6_AID_DMSO_H2BK123ub_2_ncis_normalized.bw \
	Spt6_AID_DMSO_H2BK123ub_3_ncis_normalized.bw \
	Spt6_AID_IAA_H2BK123ub_1_ncis_normalized.bw \
	Spt6_AID_IAA_H2BK123ub_2_ncis_normalized.bw \
	Spt6_AID_IAA_H2BK123ub_3_ncis_normalized.bw \
	Spt6_AID_DMSO_H2B_2_ncis_normalized.bw \
	Spt6_AID_DMSO_H2B_3_ncis_normalized.bw \
	Spt6_AID_IAA_H2B_2_ncis_normalized.bw \
	Spt6_AID_IAA_H2B_3_ncis_normalized.bw \
	Spt6_AID_DMSO_H3K4me2_1_ncis_normalized.bw \
	Spt6_AID_DMSO_H3K4me2_2_ncis_normalized.bw \
	Spt6_AID_IAA_H3K4me2_1_ncis_normalized.bw \
	Spt6_AID_IAA_H3K4me2_2_ncis_normalized.bw \
	Spt6_AID_DMSO_H3K4me3_1_ncis_normalized.bw \
	Spt6_AID_DMSO_H3K4me3_2_ncis_normalized.bw \
	Spt6_AID_IAA_H3K4me3_1_ncis_normalized.bw \
	Spt6_AID_IAA_H3K4me3_2_ncis_normalized.bw \
	Spt6_AID_DMSO_H3_1_ncis_normalized.bw \
	Spt6_AID_DMSO_H3_2_ncis_normalized.bw \
	Spt6_AID_IAA_H3_1_ncis_normalized.bw \
	Spt6_AID_IAA_H3_2_ncis_normalized.bw \
	Spt6_AID_DMSO_HSV_Paf1_1_ncis_normalized.bw \
	Spt6_AID_DMSO_HSV_Paf1_2_ncis_normalized.bw \
	Spt6_AID_IAA_HSV_Paf1_1_ncis_normalized.bw \
	Spt6_AID_IAA_HSV_Paf1_2_ncis_normalized.bw \
	Spt6_AID_DMSO_Rpb3_1_ncis_normalized.bw \
	Spt6_AID_DMSO_Rpb3_2_ncis_normalized.bw \
	Spt6_AID_IAA_Rpb3_1_ncis_normalized.bw \
	Spt6_AID_IAA_Rpb3_2_ncis_normalized.bw \
	Spt6_AID_DMSO_Rtf1_1_ncis_normalized.bw \
	Spt6_AID_DMSO_Rtf1_3_ncis_normalized.bw \
	Spt6_AID_IAA_Rtf1_1_ncis_normalized.bw \
	Spt6_AID_IAA_Rtf1_3_ncis_normalized.bw \
	Spt6_AID_DMSO_Spt5_1_ncis_normalized.bw \
	Spt6_AID_DMSO_Spt5_2_ncis_normalized.bw \
	Spt6_AID_IAA_Spt5_1_ncis_normalized.bw \
	Spt6_AID_IAA_Spt5_2_ncis_normalized.bw \
	Spt6_AID_DMSO_Spt6_1_ncis_normalized.bw \
	Spt6_AID_DMSO_Spt6_2_ncis_normalized.bw \
	Spt6_AID_IAA_Spt6_1_ncis_normalized.bw \
	Spt6_AID_IAA_Spt6_2_ncis_normalized.bw \
	Spt6_AID_DMSO_IgG_1_ncis_normalized.bw \
	Spt6_AID_DMSO_IgG_2_ncis_normalized.bw \
	Spt6_AID_IAA_IgG_1_ncis_normalized.bw \
	Spt6_AID_IAA_IgG_2_ncis_normalized.bw \
	WT_HSV_Paf1_1_ncis_normalized.bw \
	WT_HSV_Paf1_2_ncis_normalized.bw \
	spt6_50_HSV_Paf1_1_ncis_normalized.bw \
	spt6_50_HSV_Paf1_2_ncis_normalized.bw \
	WT_Rpb3_1_ncis_normalized.bw \
	WT_Rpb3_2_ncis_normalized.bw \
	spt6_50_Rpb3_1_ncis_normalized.bw \
	spt6_50_Rpb3_2_ncis_normalized.bw \
	WT_Spt5_1_ncis_normalized.bw \
	WT_Spt5_2_ncis_normalized.bw \
	spt6_50_Spt5_1_ncis_normalized.bw \
	spt6_50_Spt5_2_ncis_normalized.bw \
	WT_Spt6_1_ncis_normalized.bw \
	WT_Spt6_2_ncis_normalized.bw \
	spt6_50_Spt6_1_ncis_normalized.bw \
	spt6_50_Spt6_2_ncis_normalized.bw \
	WT_IgG_1_ncis_normalized.bw \
	WT_IgG_2_ncis_normalized.bw \
	spt6_50_IgG_1_ncis_normalized.bw \
	spt6_50_IgG_2_ncis_normalized.bw \
	--numberOfProcessors "max" \
	--outRawCounts multiBigwigSummary_reps.txt \
	--outFileName multiBigwigSummary_reps.npz 

plotCorrelation \
	--corData multiBigwigSummary_reps.npz \
	--corMethod 'spearman' \
	--whatToPlot 'heatmap' \
	--plotNumbers \
	--skipZeros \
	--plotHeight 50 \
	--plotWidth 50 \
	--outFileCorMatrix multiBigwigSummary_reps_spearmans_correlation_heatmap.tsv \
	--plotFile multiBigwigSummary_reps_spearmans_correlation_heatmap.png





multiBigwigSummary BED-file \
	--BED Scer_transcripts_w_verifiedORFs-nonoverlapping_decending_quartiles_all.bed \
	--bwfiles spt6_50_Spt6.bw \
	spt6_50_Spt5.bw \
	spt6_50_Paf1.bw \
	spt6_50_Rpb3.bw \
	spt6_50_IgG.bw \
	WT_Spt6.bw \
	WT_Spt5.bw \
	WT_Paf1.bw \
	WT_Rpb3.bw \
	WT_IgG.bw \
	Spt6_AID_IAA_Spt5.bw \
	Spt6_AID_IAA_Rtf1.bw \
	Spt6_AID_IAA_Paf1.bw \
	Spt6_AID_IAA_Rpb3.bw \
	Spt6_AID_IAA_IgG.bw \
	Spt6_AID_IAA_H3K4me3.bw \
	Spt6_AID_IAA_H3.bw \
	Spt6_AID_IAA_H3K4me2.bw \
	Spt6_AID_IAA_H2B.bw \
	Spt6_AID_IAA_H2BK123ub.bw \
	Spt6_AID_DMSO_Spt6.bw \
	Spt6_AID_DMSO_Spt5.bw \
	Spt6_AID_DMSO_Rtf1.bw \
	Spt6_AID_DMSO_Paf1.bw \
	Spt6_AID_DMSO_Rpb3.bw \
	Spt6_AID_DMSO_IgG.bw \
	Spt6_AID_DMSO_H3K4me3.bw \
	Spt6_AID_DMSO_H3.bw \
	Spt6_AID_DMSO_H3K4me2.bw \
	Spt6_AID_DMSO_H2B.bw \
	Spt6_AID_DMSO_H2BK123ub.bw \
	--numberOfProcessors "max" \
	--outRawCounts multiBigwigSummary_mean.txt \
	--outFileName multiBigwigSummary_mean.npz 

plotCorrelation \
	--corData multiBigwigSummary_mean.npz \
	--corMethod 'spearman' \
	--whatToPlot 'heatmap' \
	--plotNumbers \
	--skipZeros \
	--plotHeight 10 \
	--plotWidth 10 \
	--outFileCorMatrix multiBigwigSummary_mean_spearmans_correlation_heatmap.tsv \
	--plotFile multiBigwigSummary_mean_spearmans_correlation_heatmap.png





multiBigwigSummary BED-file \
	--BED Scer_transcripts_w_verifiedORFs-nonoverlapping_decending_quartiles_all.bed \
	--bwfiles log2fc_Spt6_AID_Spt5.bw \
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
	--numberOfProcessors "max" \
	--outRawCounts multiBigwigSummary_log2fc.txt \
	--outFileName multiBigwigSummary_log2fc.npz 


plotCorrelation \
	--corData multiBigwigSummary_log2fc.npz \
	--corMethod 'spearman' \
	--whatToPlot 'heatmap' \
	--plotNumbers \
	--skipZeros \
	--plotHeight 10 \
	--plotWidth 10 \
	--outFileCorMatrix multiBigwigSummary_log2fc_spearmans_correlation_heatmap.tsv \
	--plotFile multiBigwigSummary_log2fc_spearmans_correlation_heatmap.png






multiBigwigSummary BED-file \
	--BED Scer_transcripts_w_verifiedORFs-nonoverlapping_decending_quartiles_all.bed \
	--bwfiles log2fc_spt6_50_Rpb3.bw \
	log2fc_spt6_50_Spt5.bw \
	log2fc_spt6_50_Spt6.bw \
	log2fc_spt6_50_Paf1.bw \
	--numberOfProcessors "max" \
	--outRawCounts multiBigwigSummary_log2fc_spt6-50.txt \
	--outFileName multiBigwigSummary_log2fc_spt6-50.npz 


plotCorrelation \
	--corData multiBigwigSummary_log2fc_spt6-50.npz \
	--corMethod 'spearman' \
	--whatToPlot 'heatmap' \
	--plotNumbers \
	--skipZeros \
	--plotHeight 8 \
	--plotWidth 8 \
	--outFileCorMatrix multiBigwigSummary_log2fc_spearmans_correlation_heatmap_spt6-50.tsv \
	--plotFile multiBigwigSummary_log2fc_spearmans_correlation_heatmap_spt6-50.png




multiBigwigSummary BED-file \
	--BED Scer_transcripts_w_verifiedORFs-nonoverlapping_decending_quartiles_all.bed \
	--bwfiles log2fc_Spt6_AID_Rpb3.bw \
	log2fc_Spt6_AID_Spt5.bw \
	log2fc_Spt6_AID_Spt6.bw \
	log2fc_Spt6_AID_Paf1.bw \
	--numberOfProcessors "max" \
	--outRawCounts multiBigwigSummary_log2fc_AID.txt \
	--outFileName multiBigwigSummary_log2fc_AID.npz 


plotCorrelation \
	--corData multiBigwigSummary_log2fc_AID.npz \
	--corMethod 'spearman' \
	--whatToPlot 'heatmap' \
	--plotNumbers \
	--skipZeros \
	--plotHeight 8 \
	--plotWidth 8 \
	--outFileCorMatrix multiBigwigSummary_log2fc_spearmans_correlation_heatmap_AID.tsv \
	--plotFile multiBigwigSummary_log2fc_spearmans_correlation_heatmap_AID.png




multiBigwigSummary BED-file \
	--BED Scer_transcripts_w_verifiedORFs-nonoverlapping_decending_quartiles_all.bed \
	--bwfiles log2fc_Spt6_AID_Rpb3.bw \
	log2fc_Spt6_AID_Spt5.bw \
	log2fc_Spt6_AID_Spt6.bw \
	log2fc_Spt6_AID_Paf1.bw \
	log2fc_Spt6_AID_H2BK123ub.bw \
	log2fc_Spt6_AID_H3.bw \
	log2fc_Spt6_AID_H3K4me2.bw \
	log2fc_Spt6_AID_H3K4me3.bw \
	--numberOfProcessors "max" \
	--outRawCounts multiBigwigSummary_log2fc_AID2.txt \
	--outFileName multiBigwigSummary_log2fc_AID2.npz 


plotCorrelation \
	--corData multiBigwigSummary_log2fc_AID2.npz \
	--corMethod 'spearman' \
	--whatToPlot 'heatmap' \
	--plotNumbers \
	--skipZeros \
	--plotHeight 16 \
	--plotWidth 16 \
	--outFileCorMatrix multiBigwigSummary_log2fc_spearmans_correlation_heatmap_AID2.tsv \
	--plotFile multiBigwigSummary_log2fc_spearmans_correlation_heatmap_AID2.png






















