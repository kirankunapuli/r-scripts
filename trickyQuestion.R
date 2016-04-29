x = 5
sqrd = function(y)
{
  y ^ 2
}
sqrd(3)

median(x <- 1:5)

#Tricky question
i <- 0.1
i <- i + 0.05
i
if (i == 0.15)
{
  print("i equals 0..15")
} else {
  print("i does not equal to 0.15")
}
# Solution
if (isTRUE(all.equal(i, 0.15)))
  print("i equals 0.15, by using isTRUE and all.equal")

