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

p <- paste(df$text, collapse = " ") #全部のtweetを連結
mecabed <- RMeCabC(p) #形態素解析
lmecabed <- unlist(mecabed)
summary(lmecabed)

tb <- table(lmecabed)
summary(tb)  
tb
