library("jsonlite", lib.loc = "~/R/R-3.2.5/library")

result1 = fromJSON("test.json",
                   flatten = TRUE,
                   simplifyDataFrame = TRUE)

result1$constraints
result_df1 <- data.frame(result1)

unlist(result_df1$constraints.excludes.criteria)

View(result1$constraints)

View(unlist(result1$constraints$excludes.criteria))

result1$constraints


jsonfile <-
  fromJSON("jsonfile.json",
           flatten = TRUE,
           simplifyDataFrame = TRUE)
jsondataframe <- data.frame(jsonfile)


df1 <- cbind(jsondataframe[, -ncol(jsondataframe)], 
            do.call(cbind, jsondataframe$SSE.IRD.INTV.RD))


df2 <- cbind(result_df1[, -ncol(result_df1)],
             do.call(cbind, result_df1$constraints.excludes.criteria))

cbind(result_df1$constraints.excludes.criteria)
             