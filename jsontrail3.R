library(jsonlite)
ird <- do.call(rbind,
               lapply(paste(
                 readLines("trainfull.json", warn = FALSE),
                 collapse = ""
               ),
               jsonlite::fromJSON))

job <- list(ird[[2]])
job

ird[[1]]

intvstatus <- lapply(1:3, function(i) ird[[1]][i]$activities)

intvstatus

