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
