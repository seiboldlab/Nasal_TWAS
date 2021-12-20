#!/bin/bash

FUSION.compute_weights.R --PATH_plink plink --PATH_gemma gemma \
	--bfile tmp/GALA_ALL_${GENE_NAME} \
	--tmp tmp/GALA_ALL_${GENE_NAME}.tmp \
	--PATH_gcta gcta64 \
	--out ${out_dir}/RDATA/GALA_WGS_WEIGHTS_${GENE_NAME} \
	--models blup,top1,enet

