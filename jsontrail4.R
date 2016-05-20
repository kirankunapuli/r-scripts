library(jsonlite)
jsfile = fromJSON("trainfull.json")

datalength <- length(jsfile$schedules)

acttypes <- {
}

act <- as.data.frame(jsfile$schedules[[5]][1])

actlength <- length(act$types)
actlocations <- length(act$locations)

for (x in 1:actlength) {
  acttypes <- c(acttypes, toString(noquote(act$types[[x]])))
  actlocations <-
    c(actlocations, as.data.frame(noquote(act$locations[[x]])))
}