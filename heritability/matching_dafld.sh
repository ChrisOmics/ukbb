# Split up the UKBB SNPs into a 10x10 grid based on DAF and LD
# This generates the UKBB.features.rbin file
#$-cwd
#$-N perm
#$-l h_data=4G,h_rt=0:20:00,highp
#$-t 1-1000:10
#!/bin/bash
. /u/local/Modules/default/init/modules.sh
module load R

#SEED=$SGE_TASK_ID
#results=$1
#results='/u/home/c/crrobles/project-sriram/randomization_testing/results/161126'
results=$1
rbin=$2
#zscore file
zscore=$3
#prefix
pre=$4

#mkdir $results/matched || :
# Split up the UKBB SNPs into a 10x10 grid based on DAF and LD
# This generates the UKBB.features.rbin file
#R --slave < make_features2.R

# For each SEED (this is typically done in separate jobs):

for i in `seq 0 9`
do
    SEED=$((SGE_TASK_ID + i))
# Generate a set of SNP IDs matched on DAF and LD (from above) for a given SEED
#R --slave --args $SEED converge.dafonly.rbin < match_features5.R > ${results}/matched/matched.$SEED.id
R --slave --args $SEED $rbin < /u/home/c/crrobles/project-sriram/randomization_testing/scripts/match_features5.R > ${results}/matched/$pre.matched.$SEED.id

# Average chisq for the matched SNPs
chisq_match=`cat ${results}/matched/$pre.matched.${SEED}.id | ~/tools/search $zscore 1 | awk '{ print $3^2 }' | awk -f ~/tools/avg.awk`

echo $SEED $chisq_match > $results/perms/$pre.$SEED.perm
done


# Compute the average chisq for the true SNPs (assumes $PHE.zscore file exists with $1 being the SNP and $3 being the z-score)
#chisq_true=`cat ND_conv.id | ~/tools/search $results/assoc/allchr.assoc.logistic.zscore 1 | awk '{ print $3^2 }' | awk -f ~/tools/avg.awk`

# Compute Z-score against matched SNPs adjusted for the LDSC baseline (Assumes $PHE.results is the LDSC results output)
#R --slave --args $chisq_true ${results}/perms/converge < compare_baseline_raw.R
