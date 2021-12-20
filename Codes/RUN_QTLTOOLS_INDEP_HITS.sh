#!/bin/bash

for i in `seq 1 22`;
do
$QTLtools cis --vcf ${vcf_file} \
	--bed ${bed_file} \
	--cov ${cov_file} \
	--mapping ${mapping_file} \
	--region ${i} \
	--exclude-phenotypes ${exclude_file} \
	--out ${out_dir}/INDEPENDENT_eQTLs_${cohort}_CHR_${i}.txt"
done
