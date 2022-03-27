#!/bin/bash

module load gatk/4.1.8.0

export CHR=$1;
export CHUNK=$2;

export REF=/ibex/scratch/projects/c2023/einkorn/Resequencing/Ref_validated/TA299_v1.0.fasta
export LOCATION=/ibex/scratch/projects/c2023/einkorn/Resequencing/TA299_OUT
export OUTPUT=/ibex/scratch/projects/c2023/einkorn/Resequencing/TA299_OUT/MergeVCFs

mkdir -p $OUTPUT/SNPs ;
mkdir -p $OUTPUT/INDELs ;
mkdir -p $OUTPUT/LOGs ;

set INPUT_SNP
set INPUT_INDEL
for i in `seq 1 $CHUNK`; 
 do
  INPUT_SNP+="-I $LOCATION/SNPs_all/filtered_snps.$CHR.$i.vcf "; 
  INPUT_INDEL+="-I $LOCATION/INDELs_all/filtered_indels.$CHR.$i.vcf "; 
done

time -p gatk MergeVcfs ${INPUT_SNP} -O $OUTPUT/SNPs/$CHR.SNPs.vcf -R $REF

time -p gatk GatherVcfs ${INPUT_INDEL} -O $OUTPUT/INDELs/$CHR.INDELs.vcf -R $REF
