#!/bin/bash

# Permutation run
fastQTL --vcf ${vcf_file} \
	--bed ${bed_file} \
	--cov ${cov_file} \
	--seed 123456789 \
	--permute 1000 10000 \
	--region ${i} \
	--include-phenotypes chunk_${i}_genelist.txt \
	--out $out_dir/GALA_WGS_PERMUTATION_eQTL_${i}.txt

# Nominal run
for i in `seq 1 22`;
do
fastQTL  --vcf ${vcf_file} \
	--bed ${bed_file} \
	--cov ${cov_file} \
	--seed 123456789 \
	--region $i 22 --out $out_dir/GALA_WGS_NOMINAL_eQTL_${i}.txt
done
