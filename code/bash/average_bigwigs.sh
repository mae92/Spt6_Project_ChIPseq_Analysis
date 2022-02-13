
# cd /bigwigs


bigwigCompare \
--bigwig1 V5_Spt6_WT_8WG16_1_ncis_normalized.bw \
--bigwig2 V5_Spt6_WT_8WG16_2_ncis_normalized.bw \
--binSize 1 \
--skipNonCoveredRegions \
--skipZeroOverZero \
--operation mean \
--numberOfProcessors "max" \
--outFileFormat "bigwig" \
--outFileName V5_Spt6_WT_8WG16.bw
 

bigwigCompare \
--bigwig1 V5_spt6_NKATD_AAAAA_8WG16_1_ncis_normalized.bw \
--bigwig2 V5_spt6_NKATD_AAAAA_8WG16_2_ncis_normalized.bw \
--binSize 1 \
--skipNonCoveredRegions \
--skipZeroOverZero \
--operation mean \
--numberOfProcessors "max" \
--outFileFormat "bigwig" \
--outFileName V5_spt6_NKATD_AAAAA_8WG16.bw

bigwigCompare \
--bigwig1 V5_Spt6_WT_HA_1_ncis_normalized.bw \
--bigwig2 V5_Spt6_WT_HA_2_ncis_normalized.bw \
--binSize 1 \
--skipNonCoveredRegions \
--skipZeroOverZero \
--operation mean \
--numberOfProcessors "max" \
--outFileFormat "bigwig" \
--outFileName V5_Spt6_WT_HA.bw

bigwigCompare \
--bigwig1 V5_spt6_NKATD_AAAAA_HA_1_ncis_normalized.bw \
--bigwig2 V5_spt6_NKATD_AAAAA_HA_2_ncis_normalized.bw \
--binSize 1 \
--skipNonCoveredRegions \
--skipZeroOverZero \
--operation mean \
--numberOfProcessors "max" \
--outFileFormat "bigwig" \
--outFileName V5_spt6_NKATD_AAAAA_HA.bw


bigwigCompare \
--bigwig1 V5_Spt6_WT_V5_1_ncis_normalized.bw \
--bigwig2 V5_Spt6_WT_V5_2_ncis_normalized.bw \
--binSize 1 \
--skipNonCoveredRegions \
--skipZeroOverZero \
--operation mean \
--numberOfProcessors "max" \
--outFileFormat "bigwig" \
--outFileName V5_Spt6_WT_V5.bw

bigwigCompare \
--bigwig1 V5_spt6_NKATD_AAAAA_V5_1_ncis_normalized.bw \
--bigwig2 V5_spt6_NKATD_AAAAA_V5_2_ncis_normalized.bw \
--binSize 1 \
--skipNonCoveredRegions \
--skipZeroOverZero \
--operation mean \
--numberOfProcessors "max" \
--outFileFormat "bigwig" \
--outFileName V5_spt6_NKATD_AAAAA_V5.bw


bigwigCompare \
--bigwig1 HA_Cdc73_WT_8WG16_1_ncis_normalized.bw \
--bigwig2 HA_Cdc73_WT_8WG16_2_ncis_normalized.bw \
--binSize 1 \
--skipNonCoveredRegions \
--skipZeroOverZero \
--operation mean \
--numberOfProcessors "max" \
--outFileFormat "bigwig" \
--outFileName HA_Cdc73_WT_8WG16.bw

bigwigCompare \
--bigwig1 HA_Cdc73_W321A_HA_WT_8WG16_1_ncis_normalized.bw \
--bigwig2 HA_Cdc73_W321A_HA_WT_8WG16_2_ncis_normalized.bw \
--binSize 1 \
--skipNonCoveredRegions \
--skipZeroOverZero \
--operation mean \
--numberOfProcessors "max" \
--outFileFormat "bigwig" \
--outFileName HA_Cdc73_W321A_HA_WT_8WG16.bw


bigwigCompare \
--bigwig1 HA_Cdc73_WT_HA_1_ncis_normalized.bw \
--bigwig2 HA_Cdc73_WT_HA_2_ncis_normalized.bw \
--binSize 1 \
--skipNonCoveredRegions \
--skipZeroOverZero \
--operation mean \
--numberOfProcessors "max" \
--outFileFormat "bigwig" \
--outFileName HA_Cdc73_WT_HA.bw

bigwigCompare \
--bigwig1 HA_Cdc73_W321A_HA_WT_HA_1_ncis_normalized.bw \
--bigwig2 HA_Cdc73_W321A_HA_WT_HA_2_ncis_normalized.bw \
--binSize 1 \
--skipNonCoveredRegions \
--skipZeroOverZero \
--operation mean \
--numberOfProcessors "max" \
--outFileFormat "bigwig" \
--outFileName HA_Cdc73_W321A_HA_WT_HA.bw

bigwigCompare \
--bigwig1 HA_Cdc73_WT_Spt6_1_ncis_normalized.bw \
--bigwig2 HA_Cdc73_WT_Spt6_2_ncis_normalized.bw \
--binSize 1 \
--skipNonCoveredRegions \
--skipZeroOverZero \
--operation mean \
--numberOfProcessors "max" \
--outFileFormat "bigwig" \
--outFileName HA_Cdc73_WT_Spt6.bw

bigwigCompare \
--bigwig1 HA_Cdc73_W321A_HA_WT_Spt6_1_ncis_normalized.bw \
--bigwig2 HA_Cdc73_W321A_HA_WT_Spt6_2_ncis_normalized.bw \
--binSize 1 \
--skipNonCoveredRegions \
--skipZeroOverZero \
--operation mean \
--numberOfProcessors "max" \
--outFileFormat "bigwig" \
--outFileName HA_Cdc73_W321A_HA_WT_Spt6.bw


# bigwigCompare \
# --bigwig1 Spt6_AID_DMSO_H2BK123ub_1_ncis_normalized.bw \
# --bigwig2 Spt6_AID_DMSO_H2BK123ub_2_ncis_normalized.bw \
# --binSize 1 \
# --skipNonCoveredRegions \
# --skipZeroOverZero \
# --operation add \
# --numberOfProcessors "max" \
# --outFileFormat "bigwig" \
# --outFileName tmp.bw
# 
# bigwigCompare \
# --bigwig1 Spt6_AID_DMSO_H2BK123ub_3_ncis_normalized.bw \
# --bigwig2 tmp.bw \
# --binSize 1 \
# --skipNonCoveredRegions \
# --skipZeroOverZero \
# --scaleFactors 1:0.5 \
# --operation mean \
# --numberOfProcessors "max" \
# --outFileFormat "bigwig" \
# --outFileName Spt6_AID_DMSO_H2BK123ub.bw

bigwigCompare \
--bigwig1 Spt6_AID_DMSO_H2BK123ub_1_ncis_normalized.bw \
--bigwig2 Spt6_AID_DMSO_H2BK123ub_2_ncis_normalized.bw \
--binSize 1 \
--skipNonCoveredRegions \
--skipZeroOverZero \
--operation add \
--numberOfProcessors "max" \
--outFileFormat "bigwig" \
--outFileName Spt6_AID_DMSO_H2BK123ub.bw


# bigwigCompare \
# --bigwig1 Spt6_AID_IAA_H2BK123ub_1_ncis_normalized.bw \
# --bigwig2 Spt6_AID_IAA_H2BK123ub_2_ncis_normalized.bw \
# --binSize 1 \
# --skipNonCoveredRegions \
# --skipZeroOverZero \
# --operation add \
# --numberOfProcessors "max" \
# --outFileFormat "bigwig" \
# --outFileName tmp.bw
# 
# bigwigCompare \
# --bigwig1 Spt6_AID_IAA_H2BK123ub_3_ncis_normalized.bw \
# --bigwig2 tmp.bw \
# --binSize 1 \
# --skipNonCoveredRegions \
# --skipZeroOverZero \
# --scaleFactors 1:0.5 \
# --operation mean \
# --numberOfProcessors "max" \
# --outFileFormat "bigwig" \
# --outFileName Spt6_AID_IAA_H2BK123ub.bw

bigwigCompare \
--bigwig1 Spt6_AID_IAA_H2BK123ub_1_ncis_normalized.bw \
--bigwig2 Spt6_AID_IAA_H2BK123ub_2_ncis_normalized.bw \
--binSize 1 \
--skipNonCoveredRegions \
--skipZeroOverZero \
--operation add \
--numberOfProcessors "max" \
--outFileFormat "bigwig" \
--outFileName Spt6_AID_IAA_H2BK123ub.bw


bigwigCompare \
--bigwig1 Spt6_AID_DMSO_H2B_2_ncis_normalized.bw \
--bigwig2 Spt6_AID_DMSO_H2B_3_ncis_normalized.bw \
--binSize 1 \
--skipNonCoveredRegions \
--skipZeroOverZero \
--operation mean \
--numberOfProcessors "max" \
--outFileFormat "bigwig" \
--outFileName Spt6_AID_DMSO_H2B.bw

bigwigCompare \
--bigwig1 Spt6_AID_IAA_H2B_2_ncis_normalized.bw \
--bigwig2 Spt6_AID_IAA_H2B_3_ncis_normalized.bw \
--binSize 1 \
--skipNonCoveredRegions \
--skipZeroOverZero \
--operation mean \
--numberOfProcessors "max" \
--outFileFormat "bigwig" \
--outFileName Spt6_AID_IAA_H2B.bw



bigwigCompare \
--bigwig1 Spt6_AID_DMSO_H3K4me2_1_ncis_normalized.bw \
--bigwig2 Spt6_AID_DMSO_H3K4me2_2_ncis_normalized.bw \
--binSize 1 \
--skipNonCoveredRegions \
--skipZeroOverZero \
--operation mean \
--numberOfProcessors "max" \
--outFileFormat "bigwig" \
--outFileName Spt6_AID_DMSO_H3K4me2.bw

bigwigCompare \
--bigwig1 Spt6_AID_IAA_H3K4me2_1_ncis_normalized.bw \
--bigwig2 Spt6_AID_IAA_H3K4me2_2_ncis_normalized.bw \
--binSize 1 \
--skipNonCoveredRegions \
--skipZeroOverZero \
--operation mean \
--numberOfProcessors "max" \
--outFileFormat "bigwig" \
--outFileName Spt6_AID_IAA_H3K4me2.bw



bigwigCompare \
--bigwig1 Spt6_AID_DMSO_H3K4me3_1_ncis_normalized.bw \
--bigwig2 Spt6_AID_DMSO_H3K4me3_2_ncis_normalized.bw \
--binSize 1 \
--skipNonCoveredRegions \
--skipZeroOverZero \
--operation mean \
--numberOfProcessors "max" \
--outFileFormat "bigwig" \
--outFileName Spt6_AID_DMSO_H3K4me3.bw

bigwigCompare \
--bigwig1 Spt6_AID_IAA_H3K4me3_1_ncis_normalized.bw \
--bigwig2 Spt6_AID_IAA_H3K4me3_2_ncis_normalized.bw \
--binSize 1 \
--skipNonCoveredRegions \
--skipZeroOverZero \
--operation mean \
--numberOfProcessors "max" \
--outFileFormat "bigwig" \
--outFileName Spt6_AID_IAA_H3K4me3.bw



bigwigCompare \
--bigwig1 Spt6_AID_DMSO_H3_1_ncis_normalized.bw \
--bigwig2 Spt6_AID_DMSO_H3_2_ncis_normalized.bw \
--binSize 1 \
--skipNonCoveredRegions \
--skipZeroOverZero \
--operation mean \
--numberOfProcessors "max" \
--outFileFormat "bigwig" \
--outFileName Spt6_AID_DMSO_H3.bw

bigwigCompare \
--bigwig1 Spt6_AID_IAA_H3_1_ncis_normalized.bw \
--bigwig2 Spt6_AID_IAA_H3_2_ncis_normalized.bw \
--binSize 1 \
--skipNonCoveredRegions \
--skipZeroOverZero \
--operation mean \
--numberOfProcessors "max" \
--outFileFormat "bigwig" \
--outFileName Spt6_AID_IAA_H3.bw



bigwigCompare \
--bigwig1 Spt6_AID_DMSO_HSV_Paf1_1_ncis_normalized.bw \
--bigwig2 Spt6_AID_DMSO_HSV_Paf1_2_ncis_normalized.bw \
--binSize 1 \
--skipNonCoveredRegions \
--skipZeroOverZero \
--operation mean \
--numberOfProcessors "max" \
--outFileFormat "bigwig" \
--outFileName Spt6_AID_DMSO_Paf1.bw

bigwigCompare \
--bigwig1 Spt6_AID_IAA_HSV_Paf1_1_ncis_normalized.bw \
--bigwig2 Spt6_AID_IAA_HSV_Paf1_2_ncis_normalized.bw \
--binSize 1 \
--skipNonCoveredRegions \
--skipZeroOverZero \
--operation mean \
--numberOfProcessors "max" \
--outFileFormat "bigwig" \
--outFileName Spt6_AID_IAA_Paf1.bw



bigwigCompare \
--bigwig1 Spt6_AID_DMSO_Rpb3_1_ncis_normalized.bw \
--bigwig2 Spt6_AID_DMSO_Rpb3_2_ncis_normalized.bw \
--binSize 1 \
--skipNonCoveredRegions \
--skipZeroOverZero \
--operation mean \
--numberOfProcessors "max" \
--outFileFormat "bigwig" \
--outFileName Spt6_AID_DMSO_Rpb3.bw

bigwigCompare \
--bigwig1 Spt6_AID_IAA_Rpb3_1_ncis_normalized.bw \
--bigwig2 Spt6_AID_IAA_Rpb3_2_ncis_normalized.bw \
--binSize 1 \
--skipNonCoveredRegions \
--skipZeroOverZero \
--operation mean \
--numberOfProcessors "max" \
--outFileFormat "bigwig" \
--outFileName Spt6_AID_IAA_Rpb3.bw


bigwigCompare \
--bigwig1 Spt6_AID_DMSO_Rtf1_1_ncis_normalized.bw \
--bigwig2 Spt6_AID_DMSO_Rtf1_3_ncis_normalized.bw \
--binSize 1 \
--skipNonCoveredRegions \
--skipZeroOverZero \
--operation mean \
--numberOfProcessors "max" \
--outFileFormat "bigwig" \
--outFileName Spt6_AID_DMSO_Rtf1.bw

bigwigCompare \
--bigwig1 Spt6_AID_IAA_Rtf1_1_ncis_normalized.bw \
--bigwig2 Spt6_AID_IAA_Rtf1_3_ncis_normalized.bw \
--binSize 1 \
--skipNonCoveredRegions \
--skipZeroOverZero \
--operation mean \
--numberOfProcessors "max" \
--outFileFormat "bigwig" \
--outFileName Spt6_AID_IAA_Rtf1.bw


bigwigCompare \
--bigwig1 Spt6_AID_DMSO_Spt5_1_ncis_normalized.bw \
--bigwig2 Spt6_AID_DMSO_Spt5_2_ncis_normalized.bw \
--binSize 1 \
--skipNonCoveredRegions \
--skipZeroOverZero \
--operation mean \
--numberOfProcessors "max" \
--outFileFormat "bigwig" \
--outFileName Spt6_AID_DMSO_Spt5.bw

bigwigCompare \
--bigwig1 Spt6_AID_IAA_Spt5_1_ncis_normalized.bw \
--bigwig2 Spt6_AID_IAA_Spt5_2_ncis_normalized.bw \
--binSize 1 \
--skipNonCoveredRegions \
--skipZeroOverZero \
--operation mean \
--numberOfProcessors "max" \
--outFileFormat "bigwig" \
--outFileName Spt6_AID_IAA_Spt5.bw


bigwigCompare \
--bigwig1 Spt6_AID_DMSO_Spt6_1_ncis_normalized.bw \
--bigwig2 Spt6_AID_DMSO_Spt6_2_ncis_normalized.bw \
--binSize 1 \
--skipNonCoveredRegions \
--skipZeroOverZero \
--operation mean \
--numberOfProcessors "max" \
--outFileFormat "bigwig" \
--outFileName Spt6_AID_DMSO_Spt6.bw

bigwigCompare \
--bigwig1 Spt6_AID_IAA_Spt6_1_ncis_normalized.bw \
--bigwig2 Spt6_AID_IAA_Spt6_2_ncis_normalized.bw \
--binSize 1 \
--skipNonCoveredRegions \
--skipZeroOverZero \
--operation mean \
--numberOfProcessors "max" \
--outFileFormat "bigwig" \
--outFileName Spt6_AID_IAA_Spt6.bw

bigwigCompare \
--bigwig1 Spt6_AID_DMSO_IgG_1_ncis_normalized.bw \
--bigwig2 Spt6_AID_DMSO_IgG_2_ncis_normalized.bw \
--binSize 1 \
--skipNonCoveredRegions \
--skipZeroOverZero \
--operation mean \
--numberOfProcessors "max" \
--outFileFormat "bigwig" \
--outFileName Spt6_AID_DMSO_IgG.bw

bigwigCompare \
--bigwig1 Spt6_AID_IAA_IgG_1_ncis_normalized.bw \
--bigwig2 Spt6_AID_IAA_IgG_2_ncis_normalized.bw \
--binSize 1 \
--skipNonCoveredRegions \
--skipZeroOverZero \
--operation mean \
--numberOfProcessors "max" \
--outFileFormat "bigwig" \
--outFileName Spt6_AID_IAA_IgG.bw


bigwigCompare \
--bigwig1 WT_HSV_Paf1_1_ncis_normalized.bw \
--bigwig2 WT_HSV_Paf1_2_ncis_normalized.bw \
--binSize 1 \
--skipNonCoveredRegions \
--skipZeroOverZero \
--operation mean \
--numberOfProcessors "max" \
--outFileFormat "bigwig" \
--outFileName WT_Paf1.bw

##

bigwigCompare \
--bigwig1 spt6_50_HSV_Paf1_1_ncis_normalized.bw \
--bigwig2 spt6_50_HSV_Paf1_2_ncis_normalized.bw \
--binSize 1 \
--skipNonCoveredRegions \
--skipZeroOverZero \
--operation mean \
--numberOfProcessors "max" \
--outFileFormat "bigwig" \
--outFileName spt6_50_Paf1.bw


bigwigCompare \
--bigwig1 WT_Rpb3_1_ncis_normalized.bw \
--bigwig2 WT_Rpb3_2_ncis_normalized.bw \
--binSize 1 \
--skipNonCoveredRegions \
--skipZeroOverZero \
--operation mean \
--numberOfProcessors "max" \
--outFileFormat "bigwig" \
--outFileName WT_Rpb3.bw

bigwigCompare \
--bigwig1 spt6_50_Rpb3_1_ncis_normalized.bw \
--bigwig2 spt6_50_Rpb3_2_ncis_normalized.bw \
--binSize 1 \
--skipNonCoveredRegions \
--skipZeroOverZero \
--operation mean \
--numberOfProcessors "max" \
--outFileFormat "bigwig" \
--outFileName spt6_50_Rpb3.bw

bigwigCompare \
--bigwig1 WT_Spt5_1_ncis_normalized.bw \
--bigwig2 WT_Spt5_2_ncis_normalized.bw \
--binSize 1 \
--skipNonCoveredRegions \
--skipZeroOverZero \
--operation mean \
--numberOfProcessors "max" \
--outFileFormat "bigwig" \
--outFileName WT_Spt5.bw

bigwigCompare \
--bigwig1 spt6_50_Spt5_1_ncis_normalized.bw \
--bigwig2 spt6_50_Spt5_2_ncis_normalized.bw \
--binSize 1 \
--skipNonCoveredRegions \
--skipZeroOverZero \
--operation mean \
--numberOfProcessors "max" \
--outFileFormat "bigwig" \
--outFileName spt6_50_Spt5.bw


bigwigCompare \
--bigwig1 WT_Spt6_1_ncis_normalized.bw \
--bigwig2 WT_Spt6_2_ncis_normalized.bw \
--binSize 1 \
--skipNonCoveredRegions \
--skipZeroOverZero \
--operation mean \
--numberOfProcessors "max" \
--outFileFormat "bigwig" \
--outFileName WT_Spt6.bw

bigwigCompare \
--bigwig1 spt6_50_Spt6_1_ncis_normalized.bw \
--bigwig2 spt6_50_Spt6_2_ncis_normalized.bw \
--binSize 1 \
--skipNonCoveredRegions \
--skipZeroOverZero \
--operation mean \
--numberOfProcessors "max" \
--outFileFormat "bigwig" \
--outFileName spt6_50_Spt6.bw

bigwigCompare \
--bigwig1 WT_IgG_1_ncis_normalized.bw \
--bigwig2 WT_IgG_2_ncis_normalized.bw \
--binSize 1 \
--skipNonCoveredRegions \
--skipZeroOverZero \
--operation mean \
--numberOfProcessors "max" \
--outFileFormat "bigwig" \
--outFileName WT_IgG.bw

bigwigCompare \
--bigwig1 spt6_50_IgG_1_ncis_normalized.bw \
--bigwig2 spt6_50_IgG_2_ncis_normalized.bw \
--binSize 1 \
--skipNonCoveredRegions \
--skipZeroOverZero \
--operation mean \
--numberOfProcessors "max" \
--outFileFormat "bigwig" \
--outFileName spt6_50_IgG.bw
