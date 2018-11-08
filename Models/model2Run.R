if (exists("init") == FALSE) {
  source("initializePin.R")
}
t <- t + 1
x_tp1 <- A%*%x_t + B%*%U%*%one
x_t <- x_tp1
rownames(x_t) <- stateNames
colnames(x_t) <- c("State")
cat("State vector at time ",toString(t),"is:\n\n")
print(x_t)