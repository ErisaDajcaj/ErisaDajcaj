set.seed(123)
library(grpreg)
bardet <- read.csv("bardet.csv")
group1 <- rep(1:20, each=5)
dim(bardet)
fit <- grpreg(bardet[,-1], bardet$Y, group1, penalty ="grLasso") 
plot(fit)

coef(fit, lambda = 0.03)
cvfit <- cv.grpreg(bardet[,-1], bardet$Y, group1, penalty ="grLasso")
plot(cvfit)

cvfit$lambda.min

predict(fit, as.matrix(bardet[1,-1]), type = "response", lambda = cvfit$lambda.min)