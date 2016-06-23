set.seed(885)
my.posixct <-
  as.POSIXct(sample((60 * 60 * 24 * 365 * 50):(60 * 60 * 24 * 365 * 55), 20),
             origin = as.Date("1960-01-01"))


dat1 = data.frame(name = c("Cat", "Vic", "Osc"),
                  age = c("9", "7", "4"))

dat2 = data.frame(name = c("Vic", "Jon", "Cat"),
                  gender = c("male", "male", "female"))

merge(dat1, dat2)
merge(dat1, dat2, all = TRUE)

subset(airquality, !is.na(Solar.R))
filter(airquality, !is.na(Solar.R))
