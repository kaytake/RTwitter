source("Util.R")

twitterInit()

df = searchTweet("マウンテンビュー")
str(df)
summary(df)
head(df)
unique(df$text)
