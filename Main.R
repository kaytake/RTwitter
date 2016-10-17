source("Util.R")

twitterInit()

df = searchTweet("PSVR")
df = searchTweet("東京オリンピック", n=1000)
df = searchTweet("日吉", n=500)
df = searchTweet("田園調布", n=500)

tmpFileName <- "tmpTweet.txt"
p <- paste(df$text, collapse = " ") #全部のtweetを連結
p
cat(p, file=tmpFileName)
#mecabed <- RMeCabC(p) #形態素解析 - 量が多いとクラッシュ？ファイルに一旦書くか。
mecabed <- RMeCabFreq(tmpFileName)
str(mecabed)

sortlist <- order(mecabed$Freq,decreasing = TRUE) #出現順にソート
orderedResult <- mecabed[sortlist,]

eliminateResult <- orderedResult[(orderedResult$Info2=="固有名詞"),]
eliminateResult <- orderedResult[(orderedResult$Info1=="形容詞"),]
eliminateResult <- orderedResult[(orderedResult$Info1=="動詞"),]
eliminateResult <- orderedResult[(orderedResult$Info1=="副詞"),]

head(eliminateResult,20)

head(orderedResult,100)

install.packages("wordcloud")
library(wordcloud)
