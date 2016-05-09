a = "test"
b = "scrape"
k = 94
paste(a, b, k, sep = "_")
paste(a, b, k, sep = "")
paste0(a, b, k)
paste("a", 1:10, sep = "")

var = 201401
url = paste0("http://stats.grok.se/json/en/", var, "/web_scraping")
paste("a", 1:10, sep = "")

var = 201401
url = paste0("http://stats.grok.se/json/en/", var, "/web_scraping")
url
browseURL(url)
raw.data = readLines(url, warn = "F")
raw.data

#Fetching data

require(jsonlite)
rd <- fromJSON(raw.data)
rd
rd.views <- unlist(rd$daily_views)
rd.views

url = paste("http://stats.grok.se/json/en/", var, "/web_scraping", sep = "")
rd <- fromJSON(readLines(url, warn = "F"))
rd.views <- rd$daily_views
df <- as.data.frame(unlist(rd.views))

myfunction <- function(var) {
  url = paste("http://stats.grok.se/json/en/", var, "/web_scraping", sep =
                "")
  rd <- fromJSON(readLines(url, warn = "F"))
  rd.views <- rd$daily_views
}

url = paste("http://stats.grok.se/json/en/", var, "/web_scraping", sep =
              "")
rd <- fromJSON(readLines(url, warn = "F"))
rd.views <- rd$daily_views
df <- as.data.frame(unlist(rd.views))

myfunction <- function(var) {
  url = paste("http://stats.grok.se/json/en/", var, "/web_scraping", sep =
                "")
  rd <- fromJSON(readLines(url, warn = "F"))
  rd.views <- rd$daily_views
  df <- as.data.frame(unlist(rd.views))
}

df <- myfunction(var)

require(ggplot2)
require(lubridate)
df$date <-  as.Date(rownames(df))

colnames(df) <- c("views", "date")
ggplot(df, aes(date, views)) +
  geom_line() +
  geom_smooth() +
  theme_bw(base_size = 20)
