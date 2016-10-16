#ライブラリの読み込み
library("twitteR")
library("RMeCab")
library("tagcloud")

#Twitter サーチ、特定のキーワードを含むTwitter をdfにして返す
searchTweet <- function(searchWords, n=1000) {
  df <- twListToDF(searchTwitter(searchWords,n=n))  
  return(df)
}

#twitter サーチ結果のテキスト部分の単語出現頻度をDFで返す

#twitter タグクラウド作成


#Twitter のAuthentication 
twitterInit <- function() {
  #情報の入力
  consumerKey <- "JOpSD5R1YnmE8hIYahIikdKXV"
  consumerSecret <- "ZIuPA2KwHt8gorjUZvN33toAYNV6RU2eAJiVz1uQsRRtYir8x8"
  accessToken <- "5797872-GbR8XJBjRs0x6vdasmGVmf6jg2FKPVZ5oDfnlKKApR"
  accessSecret <- "UbqGJGZnUuvkHHIpdkpfalUzDtgvtAULVCE4xaSholMWK"
  
  #処理の準備
  #httr_oauth_chcheを保存
  options(httr_oauth_cache = TRUE)
  #認証情報の取得
  setup_twitter_oauth(consumerKey, consumerSecret, accessToken, accessSecret)
}
