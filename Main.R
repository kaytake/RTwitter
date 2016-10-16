source("Util.R")

twitterInit()

df = searchTweet("マウンテンビュー")
df = searchTweet("武蔵小杉", n = 10)
str(df)
summary(df)
head(df)
unique(df$text)

df[,1]

p = paste(df$text) #全部のtweetを連結
mecabed = RMeCabC(p, 1) #形態素解析
table(mecabed)
class(mecabed)

mecabed[,names=="名詞"]
head(mecabed)
str(mecabed)
