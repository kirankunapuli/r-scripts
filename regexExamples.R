#Regex

#?regex
#http://www.rexegg.com/regex-quickstart.html
#Can match beginning or end of word, e.g.:

stalinwords = c("stalin", "stalingrad", "Stalinism", "destalinisation")
grep("stalin", stalinwords, value = T)

#Capitalisation
grep("stalin", stalinwords, value = T)
grep("[Ss]talin", stalinwords, value = T)

#Wildcards
grep("s*grad", stalinwords, value = T)

#beginning and end of word
grep('\\<d', stalinwords, value = T)
grep('d\\>', stalinwords, value = T)