ds = read.csv('stroopdata.csv')

means = sapply(ds, mean)
sds = sapply(ds, sd)
boxplot(ds)
title('Distribution of response times\nStroop experiment, seconds')

plot(ds, pch=16)
title('Response times in Stroop experiment\nIncongruent vs Congruent words, seconds')
par(mfrow=c(2,1))
qqnorm(ds$Incongruent, pch = 19, col='gray', main='Q-Q plot, incongruent words')
qqnorm(ds$Congruent, pch = 19, col='gray', main='Q-Q plot, congruent words')

t.test(ds$Congruent, ds$Incongruent, conf.level = 0.99)
