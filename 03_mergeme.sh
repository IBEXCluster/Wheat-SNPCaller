#!/bin/bash
#chr1A_TA299 split into 1261 parts
sbatch -J chr1A_TA299 -o chr1A_TA299.log -e chr1A_TA299.log --mem=100GB --time=1-20:00:00 --wrap="sh ./merge_all_using_GATK.sh chr1A_TA299 1261"

#chr2A_TA299 split into 1625 parts
sbatch -J chr2A_TA299 -o chr2A_TA299.log -e chr2A_TA299.log --mem=100GB --time=1-20:00:00 --wrap="sh ./merge_all_using_GATK.sh chr2A_TA299 1625"

#chr3A_TA299 split into 1608 parts
sbatch -J chr3A_TA299 -o chr3A_TA299.log -e chr3A_TA299.log --mem=100GB --time=1-20:00:00 --wrap="sh ./merge_all_using_GATK.sh chr3A_TA299 1608"

#chr4A_TA299 split into 1291 parts
sbatch -J chr4A_TA299 -o chr4A_TA299.log -e chr4A_TA299.log --mem=100GB --time=1-20:00:00 --wrap="sh ./merge_all_using_GATK.sh chr4A_TA299 1291"

#chr5A_TA299 split into 1443 parts
sbatch -J chr5A_TA299 -o chr5A_TA299.log -e chr5A_TA299.log --mem=100GB --time=1-20:00:00 --wrap="sh ./merge_all_using_GATK.sh chr5A_TA299 1443"

#chr6A_TA299 split into 1257 parts
sbatch -J chr6A_TA299 -o chr6A_TA299.log -e chr6A_TA299.log --mem=100GB --time=1-20:00:00 --wrap="sh ./merge_all_using_GATK.sh chr6A_TA299 1257"

#chr7A_TA299 split into 1556 parts
sbatch -J chr7A_TA299 -o chr7A_TA299.log -e chr7A_TA299.log --mem=100GB --time=1-20:00:00 --wrap="sh ./merge_all_using_GATK.sh chr7A_TA299 1556"

#chrUn_TA299 split into 114 parts
sbatch -J chrUn_TA299 -o chrUn_TA299.log -e chrUn_TA299.log --mem=70GB --time=1-20:00:00 --wrap="sh ./merge_all_using_GATK.sh chrUn_TA299 114"
