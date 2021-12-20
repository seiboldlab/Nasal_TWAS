#!/bin/bash

for CHR in {1..22}
do
	Rscript FUSION.assoc_test.R \
            --sumstats ${summary_stats} \
            --weights ${weight_index} \
            --weights_dir ${weight_folder} \
            --ref_ld_chr ${ldred_prefix}${CHR} \
            --chr ${CHR} \
            --coloc_P 3.992654e-06 \
            --GWASN ${GWASN} \
            --max_impute .9 \
            --out ${out_dir}/${weight_model}_${TRAIT}_${CHR}.dat
done

