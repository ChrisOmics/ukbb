###Christopher Robles
###makes the outputs of the statistics
args = (commandArgs(trailingOnly=T))

# *.results file **only needed when not doing z raw
#ref.file = args[1]
# true mean chisq
fg.chisq = as.numeric(args[1])
# prefix for permuted mean chisq
perm.prefix = args[2]
results=args[3]
pre=args[4]
#counts = read.table("ND.annot",as.is=T)
#ref = read.table(ref.file,as.is=T,head=T)
#fg.ldsc = sum(ref$Coefficient* counts)

bg.ldsc = rep(NA,1e3)
bg.chisq = rep(NA,1e3)

for ( i in 1:1000 ) {
#f = paste("matched/matched.",i,".annot",sep='')
#counts = read.table(f,as.is=T)
#bg.ldsc[i] = sum(ref$Coefficient* counts)
bg.chisq[i] = read.table(file=paste(perm.prefix,i,"perm",sep='.'),as.is=T)[1,2]
}

#z.adj = ((fg.chisq - fg.ldsc) - mean( bg.chisq - bg.ldsc ))/sd( bg.chisq - bg.ldsc )
z.raw = (fg.chisq - mean(bg.chisq))/sd(bg.chisq)
##empirical pvalue (the fraction of p-values with chisq >= fg.chisq)
emp.p=sum(bg.chisq>=fg.chisq)/length(bg.chisq)
#print the chisq of bg set
cat(perm.prefix, '\t', mean(bg.chisq), '\t', sd(bg.chisq), '\n', file =paste(results, pre, '.bg.dafld.txt', sep=''), append = F)

#print zraws
cat(perm.prefix, '\t', z.raw, '\n', file =paste(results, pre, '.zraws.dafld.txt', sep=''), append = F)
#print empirical p value
cat(perm.prefix, '\t', emp.p, '\n', file =paste(results, pre, '.empP.dafld.txt', sep=''), append = F)
