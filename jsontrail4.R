library(jsonlite)
jsfile = fromJSON("trainfull.json")

datalength <- length(jsfile$schedules)

acttypes <- {
  
}

act <- as.data.frame(jsfile$schedules[[5]][1])
# act <- as.data.frame(sapply(jsfile, "[", c(5)))

actlength <- length(act$types)
actlocations <- length(act$locations)

for (x in 1:actlength) {
  acttypes <- c(acttypes, toString(noquote(act$types[[x]])))
  actlocations <-
    c(actlocations, as.data.frame(noquote(act$locations[[x]])))
}

# rbind(act$locations[[1]], act$locations[[2]], act$locations[[3]])

actl1 <- act$locations[[1]][3]
actl2 <- act$locations[[4]][3]

a1 <-
  cbind(act$locations[[1]][1], act$locations[[1]][2], actl1, act$locations[[1]][4])

a4 <-
  cbind(act$locations[[4]][1], act$locations[[4]][2], actl2, act$locations[[4]][4])
