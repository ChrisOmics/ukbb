#this file generates ids of matching SNPs based on daf and ld
args = commandArgs(trailingOnly=T)
#seed is what number permuation it is
seed = as.numeric(args[1])
set.seed(seed)
#arg2 is rbin
load(args[2])

# match on DAF + LDSC
keep = rep(F,nrow(ref))
for ( a  in 1:10 ) {
for ( b  in 1:10 ) {
num = out.dec.ldsc == a & out.dec.dafs == b
# sample this many from the ref
keep[ sample( which(ref.dec.ldsc == a & ref.dec.dafs == b) , sum(num)) ] = T
}}

cat( ref[keep,1] , sep='\n' )
