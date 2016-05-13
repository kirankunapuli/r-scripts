library(jsonlite)
js = fromJSON("trainfull.json")

names(js)
names(js$schedules)
jsadf = as.data.frame(js$schedules$activities)
as.data.frame(jsadf$types)
class(js)

names(flatten(js))

js <- lapply(js$schedules, function(x) {
  x[sapply(x, is.null)] <- NA
  unlist(x)
})

as.data.frame(js)

as.data.frame(do.call("rbind", js))

write.csv(as.data.frame(do.call("rbind", js)), file = "MyData.csv", na="")
