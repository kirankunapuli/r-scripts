library(jsonlite)
library(rio)

load1  = fromJSON(
  "B_LACCHI7_30A_2015-11-30_train_schedule_initial_load.json",
  flatten = TRUE,
  simplifyDataFrame = TRUE
)

load1$schedules$activities

matchData.i <- lapply(load1$schedules$activities, function(x){ unlist(x)})
matchData <- do.call("cbind", matchData.i)
matchData <- as.data.frame(matchData)

matchData <- rbind.fill(lapply(matchData.i, 
                               function(x) do.call("data.frame", as.list(x))
))


class(load1$schedules)

load1df = as.data.frame(load1)
load1df = data.frame(load1)

load2df = load1df$schedules.activities
load2df = data.frame(load2df)

load3df = load2df$types
load3df = data.frame(load3df)

dat <- lapply(load3df, function(j) {
  as.data.frame(replace(j, sapply(j, is.list), NA))
})

datdf = data.frame(df)



ird <- do.call(rbind,
               lapply(paste(
                 readLines(
                   "B_LACCHI7_30A_2015-11-30_train_schedule_initial_load.json",
                   warn = FALSE
                 ),
                 collapse = ""
               ),
               jsonlite::fromJSON))

ird2 <- cbind(load1[], 
            do.call(cbind, load1$schedules))




####
library(rio)
jfc2 = import("B_LACCHI7_30A_2015-11-30_train_schedule_initial_load.csv")
View(jfc2)
convert(jfc2, "mydatanew.json")
###

library(dplyr)
library(plyr)
res = rbind.fill(dat)



