# exercise 1.1
exp(1 / 2)
exp(-1 / 2)
x = rnorm(1000)
y = exp(x)
mean(y)

# exercise 1.2
# Solve X^2 + 3X + 1 = 0
A <- 1
B <- 3
C <- 1
c((-B + sqrt(B ^ 2 - 4 * A * C)) / (2 * A), (-B - sqrt(B ^ 2 - 4 * A *
                                                         C)) / (2 * A))

100 * c(-0.4, -2.6) / c((-B + sqrt(B ^ 2 - 4 * A * C)) / (2 * A), (-B - sqrt(B ^ 2 - 4 * A *
                                                           C)) / (2 * A))

# exercise 1.3
x = rnorm(100, mean = .5, sd = .3)
mean(x)
sd(x)
hist(x, axes = FALSE)
axis(1, labels = T)
axis(4, labels = T)

# exercise 2.1
paste("R session",1)
class(paste("R session",1))
data.frame(1:5) + 5
data.frame(ID = c(1,2), Aplha = c("A","B")) + 5

#exercise 2.2
x = rnorm(100) * 5 + 2 #here mean will be 2 and sd will be 5
stnd = function(x) {
  y = (x - mean(x, na.rm = TRUE)) / sd(x)
  return(y)
}

#exercise 2.3
sinx = function(x) {
  y = 3 * sin(x / 2) + x
  return(y)
}
plot(sinx, from = -7, to = 7)

#exercise 3.1a
my.data = matrix(c(-1:-8,8:1), nrow = 4, ncol = 4, byrow = T)
my.data

count.negatives = 0

for (i in 1:length(my.data[, 1])) {
  negative <- (min(my.data[i,]) < 0)
  count.negatives = count.negatives + negative
  if (count.negatives <= 3 & !negative) {
    cat("The mean of row ", i, "is", mean(my.data[i,]), "\n")
  }
  if (count.negatives <= 3 & negative) {
    cat("Row ", i, "contains negative values\n")
  }
  if (count.negatives > 3) {
    cat("Too many negative values\n")
    break
  }
}

#exercise 3.3
edf = as.data.frame(matrix(rnorm(1000), nrow = 10, ncol = 100000))
time1 = as.numeric(Sys.time())
for (i in 1:100000) {
  mean1[i] = mean(edf[, i])
}
time2 = as.numeric(Sys.time())
time2 - time1
time3 = as.numeric(Sys.time())
mean2 = sapply(edf, mean)
time4 = as.numeric(Sys.time())
time4 - time3
(time2 - time1) / (time4 - time3) #runtime factor
