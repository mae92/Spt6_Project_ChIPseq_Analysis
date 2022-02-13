cd /directory

awk '{print $1 "\t" "Scer_transcripts_w_verifiedORFs-nonoverlapping.bed " "\t" "non_overlapping_gene" "\t" $2 "\t" $3 "\t" $5 "\t" $6 "\t" "." "\t" "gene_id "$4}' bedfile.bed > new_gff.gff

