data.frame.x<-data.frame(names=c("Gretha","Robert","John","Heather"),
                         age=c(30,18,25,70),
                         nickname=c("Quicksilver","The Man","Nifty","Starlight"))

data.frame.y<-data.frame("Person_name"=c("William","Nancy","Charlotte","Henry")
                         ,age=c(15,75,32,51), "pet_dog"=c("King","Whity","Captain Vom","Doggie"))

merge(data.frame.x, data.frame.y)

merge(data.frame.y, data.frame.x)
  
data.frame.z = merge(data.frame.y, data.frame.x,
                     by.x=c("Person_name", "age"),
                     by.y=c("names", "age"), all=TRUE)
