my.text <-
  "Over the last decade, bluetongue virus have spread northwards from the mediterranean area. 
Initially this was ascribed to climate changes, but it has since
been realized that a major contributing factor has been
new transmitting vectors, culicoides obsoletus and
culicoides pulicaris, which have the ability to aquire
and transmit the disease. Recently, schmallenberg virus
has emerged in northern europe, transmitted by biting
midges as well."

my.lowercase = c("bluetongue", "culicoides", "europe", "mediterranean", "northern", "schmallenberg")

my.uppercase = c("Bluetongue", "Culicoides", "Europe", "Mediterranean", "Northern", "Schmallenberg")

my.new.text <- my.text

for (i in 1:length(my.lowercase)){
  my.new.text = gsub(my.lowercase[i], my.uppercase[i], my.new.text)
}

my.new.text
