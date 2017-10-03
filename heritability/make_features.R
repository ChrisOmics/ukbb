####input [1]mafdafld, [2]ND,[3]rbin out

args = commandArgs(trailingOnly=TRUE)

wd='/u/home/c/crrobles/project-sriram/randomization_testing'
#mafdaf='/results/161015/mafdafld/allchr.sim.rand.mafdafld'
mafdaf=args[1]
## Reference table of SNPs with MAF, LD-score, and DAF
#ref = read.table(paste(wd,mafdaf,sep=""),as.is=T)
ref = read.table(mafdaf, sep="", as.is=T)
## SNP IDs from Neandertal
#id = read.table("ND_EUR_thin.id",as.is=T)[,1]
id = read.table(args[2],as.is=T)[,1]
#rbin = "sim.rand.features.rbin"
rbin = args[3]
m = match(id,ref[,1])
id = id[!is.na(m)]
m = m[!is.na(m)]
nd.ref = ref[m,]

# get deciles
ref.dec.ldsc = cut( ref[,6] , quantile(nd.ref[,6],seq(0, 1, length = 11) ),include.lowest=TRUE,labels=F)
ref.dec.dafs = cut( ref[,5] , quantile(nd.ref[,5],seq(0, 1, length = 11) ),include.lowest=TRUE,labels=F)

out.dec.ldsc = cut( nd.ref[,6] , quantile(nd.ref[,6],seq(0, 1, length = 11) ),include.lowest=TRUE,labels=F)
out.dec.dafs = cut( nd.ref[,5] , quantile(nd.ref[,5],seq(0, 1, length = 11) ),include.lowest=TRUE,labels=F)

save(ref,nd.ref,id,ref.dec.ldsc,ref.dec.dafs,out.dec.ldsc,out.dec.dafs,file=rbin)
