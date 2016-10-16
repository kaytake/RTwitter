source("Util.R")

twitterInit()

df = searchTweet("マウンテンビュー")
df = searchTweet("武蔵小杉", n = 10)
str(df)
summary(df)
head(df)
unique(df$text)

str(df)
is.vector(df[,1])

p = paste(df$text, collapse = " ") #全部のtweetを連結
mecabed = RMeCabC(p) #形態素解析
p
mecabed
str(mecabed)
table()

mecabed <- rep(1,length=1)
  
tb <- c(mecabed,rep(1,length=1))
tb
a<- data.frame(Word=mecabed, Count=numeric(1))
str(a)
head(a)

table(iris$Species)
x=1:5
x

b= data.frame(a)
str(b)

summary(a)
class(mecabed)

mecabed[,names=="名詞"]
head(mecabed)
str(mecabed)
