i = 1
for (i in 1:4) {
  write.csv(as.data.frame(do.call("cbind", js1)), file = "MyData1.csv", na = "")
  i = i + 1
}


library(jsonlite)
js1 = fromJSON("trainfull.json")

#####
# Working code
js1
sapply(js1, "[[", c(1))
####
sapply(js1, "[", c(1))
sapply(js1, "[", c(2))
sapply(js1, "[", c(3))
sapply(js1, "[", c(4))

js1new = as.data.frame(sapply(js1, "[", c(5)))
#####


# Seperating activities-types
types = sapply(js1$schedules$activities, "[", c(6))

types <- lapply(types, function(x) {
  x[sapply(x, is.null)] <- NA
  unlist(x)
})

do.call(rbind, unlist(types, recursive = F))

# End of activities-types

# Seperating activities-locations
jloc = sapply(js1$schedules$activities, "[", c(7))

jloc <- lapply(jloc, function(x) {
  x[sapply(x, is.null)] <- NA
  unlist(x)
})

do.call(c, unlist(jloc, recursive = F))
