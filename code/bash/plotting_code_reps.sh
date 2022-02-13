
cd /bigwigs


computeMatrix scale-regions \
-b 500 -a 500 \
-S Spt6_AID_DMSO_H2BK123ub_1_ncis_normalized.bw \
Spt6_AID_DMSO_H2BK123ub_2_ncis_normalized.bw \
Spt6_AID_DMSO_H2BK123ub_3_ncis_normalized.bw \
Spt6_AID_IAA_H2BK123ub_1_ncis_normalized.bw \
Spt6_AID_IAA_H2BK123ub_2_ncis_normalized.bw \
Spt6_AID_IAA_H2BK123ub_3_ncis_normalized.bw \
-R Scer_transcripts_w_verifiedORFs-nonoverlapping.bed \
--binSize 25 \
--missingDataAsZero \
--averageTypeBins mean \
--numberOfProcessors "max" \
-out Spt6_AID_H2Bub_matrix.gz

plotProfile -m Spt6_AID_H2Bub_matrix.gz \
	-out Spt6_AID_H2Bub.png \
	--dpi 300 \
	--plotType=lines \
	--perGroup \
	--colors "#000000" "#666666" "#bfbfbf" "#990000" "#ff0000" "#ff6666" \
	--samplesLabel "DMSO_1" "DMSO_2" "DMSO_3" "IAA_1" "IAA_2" "IAA_3" \
	--legendLocation "upper-left" \
	--averageType "mean" \
	--plotHeight 8 \
	--plotWidth 12 \
	--regionsLabel "H2BK123ub" \
	--plotFileFormat "png" \



computeMatrix scale-regions \
-b 500 -a 500 \
-S Spt6_AID_DMSO_H2B_2_ncis_normalized.bw \
Spt6_AID_DMSO_H2B_3_ncis_normalized.bw \
Spt6_AID_IAA_H2B_2_ncis_normalized.bw \
Spt6_AID_IAA_H2B_3_ncis_normalized.bw \
-R Scer_transcripts_w_verifiedORFs-nonoverlapping.bed \
--binSize 25 \
--missingDataAsZero \
--averageTypeBins mean \
--numberOfProcessors "max" \
-out Spt6_AID_H2B_matrix.gz

plotProfile -m Spt6_AID_H2B_matrix.gz \
	-out Spt6_AID_H2B.png \
	--dpi 300 \
	--plotType=lines \
	--perGroup \
	--colors "#000000" "#666666" "#990000" "#ff0000" \
	--samplesLabel "DMSO_1" "DMSO_2" "IAA_1" "IAA_2" \
	--legendLocation "upper-left" \
	--averageType "mean" \
	--plotHeight 8 \
	--plotWidth 12 \
	--regionsLabel "H2B" \
	--plotFileFormat "png"



computeMatrix scale-regions \
-b 500 -a 500 \
-S Spt6_AID_DMSO_H3K4me2_1_ncis_normalized.bw \
Spt6_AID_DMSO_H3K4me2_2_ncis_normalized.bw \
Spt6_AID_IAA_H3K4me2_1_ncis_normalized.bw \
Spt6_AID_IAA_H3K4me2_2_ncis_normalized.bw \
-R Scer_transcripts_w_verifiedORFs-nonoverlapping.bed \
--binSize 25 \
--missingDataAsZero \
--averageTypeBins mean \
--numberOfProcessors "max" \
-out Spt6_AID_H3K4me2_matrix.gz

plotProfile -m Spt6_AID_H3K4me2_matrix.gz \
	-out Spt6_AID_H3K4me2.png \
	--dpi 300 \
	--plotType=lines \
	--perGroup \
	--colors "#000000" "#666666" "#990000" "#ff0000" \
	--samplesLabel "DMSO_1" "DMSO_2" "IAA_1" "IAA_2" \
	--legendLocation "upper-left" \
	--averageType "mean" \
	--plotHeight 8 \
	--plotWidth 12 \
	--regionsLabel "H3K4me2" \
	--plotFileFormat "png"



computeMatrix scale-regions \
-b 500 -a 500 \
-S Spt6_AID_DMSO_H3K4me3_1_ncis_normalized.bw \
Spt6_AID_DMSO_H3K4me3_2_ncis_normalized.bw \
Spt6_AID_IAA_H3K4me3_1_ncis_normalized.bw \
Spt6_AID_IAA_H3K4me3_2_ncis_normalized.bw \
-R Scer_transcripts_w_verifiedORFs-nonoverlapping.bed \
--binSize 25 \
--missingDataAsZero \
--averageTypeBins mean \
--numberOfProcessors "max" \
-out Spt6_AID_H3K4me3_matrix.gz

plotProfile -m Spt6_AID_H3K4me3_matrix.gz \
	-out Spt6_AID_H3K4me3.png \
	--dpi 300 \
	--plotType=lines \
	--perGroup \
	--colors "#000000" "#666666" "#990000" "#ff0000" \
	--samplesLabel "DMSO_1" "DMSO_2" "IAA_1" "IAA_2" \
	--legendLocation "upper-left" \
	--averageType "mean" \
	--plotHeight 8 \
	--plotWidth 12 \
	--regionsLabel "H3K4me3" \
	--plotFileFormat "png"



computeMatrix scale-regions \
-b 500 -a 500 \
-S Spt6_AID_DMSO_H3_1_ncis_normalized.bw \
Spt6_AID_DMSO_H3_2_ncis_normalized.bw \
Spt6_AID_IAA_H3_1_ncis_normalized.bw \
Spt6_AID_IAA_H3_2_ncis_normalized.bw \
-R Scer_transcripts_w_verifiedORFs-nonoverlapping.bed \
--binSize 25 \
--missingDataAsZero \
--averageTypeBins mean \
--numberOfProcessors "max" \
-out Spt6_AID_H3_matrix.gz

plotProfile -m Spt6_AID_H3_matrix.gz \
	-out Spt6_AID_H3.png \
	--dpi 300 \
	--plotType=lines \
	--perGroup \
	--colors "#000000" "#666666" "#990000" "#ff0000" \
	--samplesLabel "DMSO_1" "DMSO_2" "IAA_1" "IAA_2" \
	--legendLocation "upper-left" \
	--averageType "mean" \
	--plotHeight 8 \
	--plotWidth 12 \
	--regionsLabel "H3" \
	--plotFileFormat "png"



computeMatrix scale-regions \
-b 500 -a 500 \
-S Spt6_AID_DMSO_Rtf1_1_ncis_normalized.bw \
Spt6_AID_DMSO_Rtf1_3_ncis_normalized.bw \
Spt6_AID_IAA_Rtf1_1_ncis_normalized.bw \
Spt6_AID_IAA_Rtf1_3_ncis_normalized.bw \
-R Scer_transcripts_w_verifiedORFs-nonoverlapping.bed \
--binSize 25 \
--missingDataAsZero \
--averageTypeBins mean \
--numberOfProcessors "max" \
-out Spt6_AID_Rtf1_matrix.gz

plotProfile -m Spt6_AID_Rtf1_matrix.gz \
	-out Spt6_AID_Rtf1.png \
	--dpi 300 \
	--plotType=lines \
	--perGroup \
	--colors "#000000" "#666666" "#990000" "#ff0000" \
	--samplesLabel "DMSO_1" "DMSO_2" "IAA_1" "IAA_2" \
	--legendLocation "upper-left" \
	--averageType "mean" \
	--plotHeight 8 \
	--plotWidth 12 \
	--regionsLabel "Rtf1" \
	--plotFileFormat "png"



computeMatrix scale-regions \
-b 500 -a 500 \
-S Spt6_AID_DMSO_HSV_Paf1_1_ncis_normalized.bw \
Spt6_AID_DMSO_HSV_Paf1_2_ncis_normalized.bw \
Spt6_AID_IAA_HSV_Paf1_1_ncis_normalized.bw \
Spt6_AID_IAA_HSV_Paf1_2_ncis_normalized.bw \
Spt6_AID_DMSO_IgG_1_ncis_normalized.bw \
-R Scer_transcripts_w_verifiedORFs-nonoverlapping.bed \
--binSize 25 \
--missingDataAsZero \
--averageTypeBins mean \
--numberOfProcessors "max" \
-out Spt6_AID_Paf1_matrix.gz

plotProfile -m Spt6_AID_Paf1_matrix.gz \
	-out Spt6_AID_Paf1.png \
	--dpi 300 \
	--plotType=lines \
	--perGroup \
	--colors "#000000" "#666666" "#990000" "#ff0000"  "#e6e6e6" \
	--samplesLabel "DMSO_1" "DMSO_2" "IAA_1" "IAA_2" "IgG" \
	--legendLocation "upper-left" \
	--averageType "mean" \
	--plotHeight 8 \
	--plotWidth 12 \
	--regionsLabel "Paf1" \
	--plotFileFormat "png"



computeMatrix scale-regions \
-b 500 -a 500 \
-S Spt6_AID_DMSO_Rpb3_1_ncis_normalized.bw \
Spt6_AID_DMSO_Rpb3_2_ncis_normalized.bw \
Spt6_AID_IAA_Rpb3_1_ncis_normalized.bw \
Spt6_AID_IAA_Rpb3_2_ncis_normalized.bw \
Spt6_AID_DMSO_IgG_1_ncis_normalized.bw \
-R Scer_transcripts_w_verifiedORFs-nonoverlapping.bed \
--binSize 25 \
--missingDataAsZero \
--averageTypeBins mean \
--numberOfProcessors "max" \
-out Spt6_AID_Rpb3_matrix.gz

plotProfile -m Spt6_AID_Rpb3_matrix.gz \
	-out Spt6_AID_Rpb3.png \
	--dpi 300 \
	--plotType=lines \
	--perGroup \
	--colors "#000000" "#666666" "#990000" "#ff0000"  "#e6e6e6" \
	--samplesLabel "DMSO_1" "DMSO_2" "IAA_1" "IAA_2" "IgG" \
	--legendLocation "upper-left" \
	--averageType "mean" \
	--plotHeight 8 \
	--plotWidth 12 \
	--regionsLabel "Rpb3" \
	--plotFileFormat "png"




computeMatrix scale-regions \
-b 500 -a 500 \
-S Spt6_AID_DMSO_Spt5_1_ncis_normalized.bw \
Spt6_AID_DMSO_Spt5_2_ncis_normalized.bw \
Spt6_AID_IAA_Spt5_1_ncis_normalized.bw \
Spt6_AID_IAA_Spt5_2_ncis_normalized.bw \
Spt6_AID_DMSO_IgG_1_ncis_normalized.bw \
-R Scer_transcripts_w_verifiedORFs-nonoverlapping.bed \
--binSize 25 \
--missingDataAsZero \
--averageTypeBins mean \
--numberOfProcessors "max" \
-out Spt6_AID_Spt5_matrix.gz

plotProfile -m Spt6_AID_Spt5_matrix.gz \
	-out Spt6_AID_Spt5.png \
	--dpi 300 \
	--plotType=lines \
	--perGroup \
	--colors "#000000" "#666666" "#990000" "#ff0000" "#e6e6e6" \
	--samplesLabel "DMSO_1" "DMSO_2" "IAA_1" "IAA_2" "IgG" \
	--legendLocation "upper-left" \
	--averageType "mean" \
	--plotHeight 8 \
	--plotWidth 12 \
	--regionsLabel "Spt5" \
	--plotFileFormat "png"




computeMatrix scale-regions \
-b 500 -a 500 \
-S Spt6_AID_DMSO_Spt6_1_ncis_normalized.bw \
Spt6_AID_DMSO_Spt6_2_ncis_normalized.bw \
Spt6_AID_IAA_Spt6_1_ncis_normalized.bw \
Spt6_AID_IAA_Spt6_2_ncis_normalized.bw \
Spt6_AID_DMSO_IgG_1_ncis_normalized.bw \
-R Scer_transcripts_w_verifiedORFs-nonoverlapping.bed \
--binSize 25 \
--missingDataAsZero \
--averageTypeBins mean \
--numberOfProcessors "max" \
-out Spt6_AID_Spt6_matrix.gz

plotProfile -m Spt6_AID_Spt6_matrix.gz \
	-out Spt6_AID_Spt6.png \
	--dpi 300 \
	--plotType=lines \
	--perGroup \
	--colors "#000000" "#666666" "#990000" "#ff0000" "#e6e6e6" \
	--samplesLabel "DMSO_1" "DMSO_2" "IAA_1" "IAA_2" "IgG" \
	--legendLocation "upper-left" \
	--averageType "mean" \
	--plotHeight 8 \
	--plotWidth 12 \
	--regionsLabel "Spt6" \
	--plotFileFormat "png"



computeMatrix scale-regions \
-b 500 -a 500 \
-S WT_HSV_Paf1_1_ncis_normalized.bw \
WT_HSV_Paf1_2_ncis_normalized.bw \
spt6_50_HSV_Paf1_1_ncis_normalized.bw \
spt6_50_HSV_Paf1_2_ncis_normalized.bw \
WT_IgG_1_ncis_normalized.bw \
-R Scer_transcripts_w_verifiedORFs-nonoverlapping.bed \
--binSize 25 \
--missingDataAsZero \
--averageTypeBins mean \
--numberOfProcessors "max" \
-out spt6_50_Paf1_matrix.gz

plotProfile -m spt6_50_Paf1_matrix.gz \
	-out spt6_50_Paf1.png \
	--dpi 300 \
	--plotType=lines \
	--perGroup \
	--colors "#000000" "#666666" blue lightblue "#e6e6e6" \
	--samplesLabel "WT_1" "WT_2" "spt6-50_1" "spt6-50_2" "IgG"\
	--legendLocation "upper-left" \
	--averageType "mean" \
	--plotHeight 8 \
	--plotWidth 12 \
	--regionsLabel "Paf1" \
	--plotFileFormat "png"



computeMatrix scale-regions \
-b 500 -a 500 \
-S WT_Rpb3_1_ncis_normalized.bw \
WT_Rpb3_2_ncis_normalized.bw \
spt6_50_Rpb3_1_ncis_normalized.bw \
spt6_50_Rpb3_2_ncis_normalized.bw \
WT_IgG_1_ncis_normalized.bw \
-R Scer_transcripts_w_verifiedORFs-nonoverlapping.bed \
--binSize 25 \
--missingDataAsZero \
--averageTypeBins mean \
--numberOfProcessors "max" \
-out spt6_50_Rpb3_matrix.gz

plotProfile -m spt6_50_Rpb3_matrix.gz \
	-out spt6_50_Rpb3.png \
	--dpi 300 \
	--plotType=lines \
	--perGroup \
	--colors "#000000" "#666666" blue lightblue "#e6e6e6" \
	--samplesLabel "WT_1" "WT_2" "spt6-50_1" "spt6-50_2" "IgG"\
	--legendLocation "upper-left" \
	--averageType "mean" \
	--plotHeight 8 \
	--plotWidth 12 \
	--regionsLabel "Rpb3" \
	--plotFileFormat "png"



computeMatrix scale-regions \
-b 500 -a 500 \
-S WT_Spt5_1_ncis_normalized.bw \
WT_Spt5_2_ncis_normalized.bw \
spt6_50_Spt5_1_ncis_normalized.bw \
spt6_50_Spt5_2_ncis_normalized.bw \
WT_IgG_1_ncis_normalized.bw \
-R Scer_transcripts_w_verifiedORFs-nonoverlapping.bed \
--binSize 25 \
--missingDataAsZero \
--averageTypeBins mean \
--numberOfProcessors "max" \
-out spt6_50_Spt5_matrix.gz

plotProfile -m spt6_50_Spt5_matrix.gz \
	-out spt6_50_Spt5.png \
	--dpi 300 \
	--plotType=lines \
	--perGroup \
	--colors "#000000" "#666666" blue lightblue "#e6e6e6" \
	--samplesLabel "WT_1" "WT_2" "spt6-50_1" "spt6-50_2" "IgG"\
	--legendLocation "upper-left" \
	--averageType "mean" \
	--plotHeight 8 \
	--plotWidth 12 \
	--regionsLabel "Spt5" \
	--plotFileFormat "png"



computeMatrix scale-regions \
-b 500 -a 500 \
-S WT_Spt6_1_ncis_normalized.bw \
WT_Spt6_2_ncis_normalized.bw \
spt6_50_Spt6_1_ncis_normalized.bw \
spt6_50_Spt6_2_ncis_normalized.bw \
WT_IgG_1_ncis_normalized.bw \
-R Scer_transcripts_w_verifiedORFs-nonoverlapping.bed \
--binSize 25 \
--missingDataAsZero \
--averageTypeBins mean \
--numberOfProcessors "max" \
-out spt6_50_Spt6_matrix.gz

plotProfile -m spt6_50_Spt6_matrix.gz \
	-out spt6_50_Spt6.png \
	--dpi 300 \
	--plotType=lines \
	--perGroup \
	--colors "#000000" "#666666" blue lightblue "#e6e6e6" \
	--samplesLabel "WT_1" "WT_2" "spt6-50_1" "spt6-50_2" "IgG"\
	--legendLocation "upper-left" \
	--averageType "mean" \
	--plotHeight 8 \
	--plotWidth 12 \
	--regionsLabel "Spt6" \
	--plotFileFormat "png"




