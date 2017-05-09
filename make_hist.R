df.perm<-read.csv("perms/sim.1.0.all.perm", header = F, sep="")
chifg<-scan("NIMS_chisq.txt")
df.perm$Chisq<-df.perm$V2
jpeg(file="nonnims.sim.1.0.chisq.hist.dafld.jpg")
hist(df.perm$Chisq, main = "Histogram of Simulated phenotype h^2=1,\n non-NIMs enrichment, Chi-square scores, LD & DAF matched", xlab="Chi-square")
abline(v=chifg, col="red")
dev.off()

df.perm<-read.csv("perms/sim.1.0.daf.all.perm", header = F, sep="")
chifg<-scan("NIMS_chisq.txt")
df.perm$Chisq<-df.perm$V2
jpeg(file="nonnims.sim.1.0.chisq.hist.daf.jpg")
hist(df.perm$Chisq, main = "Histogram of Simulated phenotype h^2=1,\n non-NIMs enrichment, Chi-square scores, DAF matched", xlab="Chi-square")
abline(v=chifg, col="red")
dev.off()

df.perm<-read.csv("perms/sim.1.0.rand.all.perm", header = F, sep="")
chifg<-scan("NIMS_chisq.txt")
df.perm$Chisq<-df.perm$V2
jpeg(file="nonnims.sim.1.0.chisq.hist.rand.jpg")
hist(df.perm$Chisq, main = "Histogram of Simulated phenotype h^2=1,\n non-NIMs enrichment, Chi-square scores, Random matched", xlab="Chi-square")
abline(v=chifg, col="red")
dev.off()


df.perm<-read.csv("perms/sim.1.0.all.perm", header = F, sep="")
chifg<-scan("NIMS_chisq.txt")
df.perm$Chisq<-df.perm$V2
jpeg(file="nims.sim.1.0.chisq.hist.dafld.jpg")
hist(df.perm$Chisq, main = "Histogram of Simulated phenotype h^2=1,\n NIMs enrichment, Chi-square scores, LD & DAF matched", xlab="Chi-square")
abline(v=chifg, col="red")
dev.off()

df.perm<-read.csv("perms/sim.1.0.daf.all.perm", header = F, sep="")
chifg<-scan("NIMS_chisq.txt")
df.perm$Chisq<-df.perm$V2
jpeg(file="nims.sim.1.0.chisq.hist.daf.jpg")
hist(df.perm$Chisq, main = "Histogram of Simulated phenotype h^2=1,\n NIMs enrichment, Chi-square scores, DAF matched", xlab="Chi-square")
abline(v=chifg, col="red")
dev.off()


df.perm<-read.csv("perms/sim.1.0.rand.all.perm", header = F, sep="")
chifg<-scan("NIMS_chisq.txt")
df.perm$Chisq<-df.perm$V2
jpeg(file="nims.sim.1.0.chisq.hist.rand.jpg")
hist(df.perm$Chisq, main = "Histogram of Simulated phenotype h^2=1,\n NIMs enrichment, Chi-square scores, Random matched", xlab="Chi-square")
abline(v=chifg, col="red")
dev.off()



df.perm<-read.csv("perms/sim.0.75.all.perm", header = F, sep="")
chifg<-scan("NIMS_chisq.txt")
df.perm$Chisq<-df.perm$V2
jpeg(file="noenrich.sim.0.75.chisq.hist.dafld.jpg")
hist(df.perm$Chisq, main = "Histogram of Simulated phenotype h^2=0.75,\n no enrichment, Chi-square scores, LD & DAF matched", xlab="Chi-square")
abline(v=chifg, col="red")
dev.off()

df.perm<-read.csv("perms/sim.0.75.daf.all.perm", header = F, sep="")
chifg<-scan("NIMS_chisq.txt")
df.perm$Chisq<-df.perm$V2
jpeg(file="noenrich.sim.0.75.chisq.hist.daf.jpg")
hist(df.perm$Chisq, main = "Histogram of Simulated phenotype h^2=0.75,\n no enrichment, Chi-square scores, DAF matched", xlab="Chi-square")
abline(v=chifg, col="red")
dev.off()


df.perm<-read.csv("perms/sim.0.75.rand.all.perm", header = F, sep="")
chifg<-scan("NIMS_chisq.txt")
df.perm$Chisq<-df.perm$V2
jpeg(file="noenrich.sim.0.75.chisq.hist.rand.jpg")
hist(df.perm$Chisq, main = "Histogram of Simulated phenotype h^2=0.75,\n no enrichment, Chi-square scores, Random matched", xlab="Chi-square")
abline(v=chifg, col="red")
dev.off()

