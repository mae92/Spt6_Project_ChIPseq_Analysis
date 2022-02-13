
cd /bigwigs


computeMatrix scale-regions \
	-b 500 -a 500 \
	-S Spt6_AID_DMSO_H2BK123ub.bw \
	Spt6_AID_IAA_H2BK123ub.bw \
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
	--colors "#000000" "#990000" \
	--samplesLabel "DMSO" "IAA" \
	--legendLocation "upper-left" \
	--averageType "mean" \
	--plotHeight 8 \
	--plotWidth 12 \
	--regionsLabel "H2BK123ub" \
	--plotFileFormat "png" \



computeMatrix scale-regions \
	-b 500 -a 500 \
	-S Spt6_AID_DMSO_H2B.bw \
	Spt6_AID_IAA_H2B.bw \
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
	--colors "#000000" "#990000" \
	--samplesLabel "DMSO" "IAA" \
	--legendLocation "upper-left" \
	--averageType "mean" \
	--plotHeight 8 \
	--plotWidth 12 \
	--regionsLabel "H2B" \
	--plotFileFormat "png"



computeMatrix scale-regions \
	-b 500 -a 500 \
	-S Spt6_AID_DMSO_H3K4me2.bw \
	Spt6_AID_IAA_H3K4me2.bw \
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
	--colors "#000000" "#990000" \
	--samplesLabel "DMSO" "IAA" \
	--legendLocation "upper-left" \
	--averageType "mean" \
	--plotHeight 8 \
	--plotWidth 12 \
	--regionsLabel "H3K4me2" \
	--plotFileFormat "png"



computeMatrix scale-regions \
	-b 500 -a 500 \
	-S Spt6_AID_DMSO_H3K4me3.bw \
	Spt6_AID_IAA_H3K4me3.bw \
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
	--colors "#000000" "#990000" \
	--samplesLabel "DMSO" "IAA" \
	--legendLocation "upper-left" \
	--averageType "mean" \
	--plotHeight 8 \
	--plotWidth 12 \
	--regionsLabel "H3K4me3" \
	--plotFileFormat "png"



computeMatrix scale-regions \
	-b 500 -a 500 \
	-S Spt6_AID_DMSO_H3.bw \
	Spt6_AID_IAA_H3.bw \
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
	--colors "#000000" "#990000" \
	--samplesLabel "DMSO" "IAA" \
	--legendLocation "upper-left" \
	--averageType "mean" \
	--plotHeight 8 \
	--plotWidth 12 \
	--regionsLabel "H3" \
	--plotFileFormat "png"



computeMatrix scale-regions \
	-b 500 -a 500 \
	-S Spt6_AID_DMSO_Rtf1.bw \
	Spt6_AID_IAA_Rtf1.bw \
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
	--colors "#000000" "#990000" \
	--samplesLabel "DMSO" "IAA" \
	--legendLocation "upper-left" \
	--averageType "mean" \
	--plotHeight 8 \
	--plotWidth 12 \
	--regionsLabel "Rtf1" \
	--plotFileFormat "png"



computeMatrix scale-regions \
	-b 500 -a 500 \
	-S Spt6_AID_DMSO_Paf1.bw \
	Spt6_AID_IAA_Paf1.bw \
	Spt6_AID_DMSO_IgG.bw \
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
	--colors "#000000" "#990000" "#e6e6e6" \
	--samplesLabel "DMSO" "IAA" "IgG" \
	--legendLocation "upper-left" \
	--averageType "mean" \
	--plotHeight 8 \
	--plotWidth 12 \
	--regionsLabel "Paf1" \
	--plotFileFormat "png"



computeMatrix scale-regions \
	-b 500 -a 500 \
	-S Spt6_AID_DMSO_Rpb3.bw \
	Spt6_AID_IAA_Rpb3.bw \
	Spt6_AID_DMSO_IgG.bw \
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
	--colors "#000000" "#990000" "#e6e6e6" \
	--samplesLabel "DMSO" "IAA" "IgG" \
	--legendLocation "upper-left" \
	--averageType "mean" \
	--plotHeight 8 \
	--plotWidth 12 \
	--regionsLabel "Rpb3" \
	--plotFileFormat "png"




computeMatrix scale-regions \
	-b 500 -a 500 \
	-S Spt6_AID_DMSO_Spt5.bw \
	Spt6_AID_IAA_Spt5.bw \
	Spt6_AID_DMSO_IgG.bw \
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
	--colors "#000000" "#990000" "#e6e6e6" \
	--samplesLabel "DMSO" "IAA" "IgG" \
	--legendLocation "upper-left" \
	--averageType "mean" \
	--plotHeight 8 \
	--plotWidth 12 \
	--regionsLabel "Spt5" \
	--plotFileFormat "png"




computeMatrix scale-regions \
	-b 500 -a 500 \
	-S Spt6_AID_DMSO_Spt6.bw \
	Spt6_AID_IAA_Spt6.bw \
	Spt6_AID_DMSO_IgG.bw \
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
	--colors "#000000" "#990000" "#e6e6e6" \
	--samplesLabel "DMSO" "IAA" "IgG" \
	--legendLocation "upper-left" \
	--averageType "mean" \
	--plotHeight 8 \
	--plotWidth 12 \
	--regionsLabel "Spt6" \
	--plotFileFormat "png"



computeMatrix scale-regions \
	-b 500 -a 500 \
	-S WT_Paf1.bw \
	spt6_50_Paf1.bw \
	WT_IgG.bw \
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
	--colors "#000000" blue "#e6e6e6" \
	--samplesLabel "WT" "spt6-50" "IgG" \
	--legendLocation "upper-left" \
	--averageType "mean" \
	--plotHeight 8 \
	--plotWidth 12 \
	--regionsLabel "Paf1" \
	--plotFileFormat "png"



computeMatrix scale-regions \
	-b 500 -a 500 \
	-S WT_Rpb3.bw \
	spt6_50_Rpb3.bw \
	WT_IgG.bw \
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
	--colors "#000000" blue "#e6e6e6" \
	--samplesLabel "WT" "spt6-50" "IgG" \
	--legendLocation "upper-left" \
	--averageType "mean" \
	--plotHeight 8 \
	--plotWidth 12 \
	--regionsLabel "Rpb3" \
	--plotFileFormat "png"



computeMatrix scale-regions \
	-b 500 -a 500 \
	-S WT_Spt5.bw \
	spt6_50_Spt5.bw \
	WT_IgG.bw \
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
	--colors "#000000" blue "#e6e6e6" \
	--samplesLabel "WT" "spt6-50" "IgG" \
	--legendLocation "upper-left" \
	--averageType "mean" \
	--plotHeight 8 \
	--plotWidth 12 \
	--regionsLabel "Spt5" \
	--plotFileFormat "png"



computeMatrix scale-regions \
	-b 500 -a 500 \
	-S WT_Spt6.bw \
	spt6_50_Spt6.bw \
	WT_IgG.bw \
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
	--colors "#000000" blue "#e6e6e6" \
	--samplesLabel "WT" "spt6-50" "IgG" \
	--legendLocation "upper-left" \
	--averageType "mean" \
	--plotHeight 8 \
	--plotWidth 12 \
	--regionsLabel "Spt6" \
	--plotFileFormat "png"




