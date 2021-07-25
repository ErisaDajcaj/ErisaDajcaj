library(grplasso)
set.seed(999)
bardet <- read.csv("bardet.csv")

X = cbind(1,as.matrix(bardet))

y = X[,1] + runif(10)*0.1

prob <- 1 / (1 + exp(-X))
mean(pmin(prob, 1 - prob)) ## Bayes risk
y <- rbinom(nrow(X), size = 1, prob = prob) ##  Binary response vector

## Create the gropus
index <- c()
numberOfIter <- (ncol(X)/2)-1
for(i in 1:numberOfIter) {
  index <- c( index, i, i)
}

index<-c(NA, 0, index) 
lambda <- lambdamax(X, y = y, index = index, penscale = sqrt,
                    model = LogReg()) * 0.5^(0:5)

fit <- grplasso(X, y = y, index = index, lambda = lambda, model = LogReg(),
                penscale = sqrt,
                control = grpl.control(update.hess = "lambda", trace = 0))


plot(fit)
pred <- predict(fit)
pred.resp <- predict(fit, type = "response")

plot(pred, pred.resp)