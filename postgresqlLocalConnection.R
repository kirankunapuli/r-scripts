# Using RPostgresql
library(DBI)
library(RPostgreSQL)
drv <- dbDriver("PostgreSQL")
con <-
  dbConnect(
    drv,
    host = 'localhost',
    port = '5432',
    dbname = 'postgres',
    user = 'postgres',
    password = 'postgres'
  )

#Creating and assigning SQL string to a R object
sqllocal = paste("select * from iris", sep = "")

#Running and saving the result of the SQL query
iris = dbGetQuery(con, sqllocal)