trump_text=sapply(trump.tweets,function(x) x$getText())
df<- do.call("rbind",lapply(trump.tweets, as.data.frame))
trump_text <- sapply(df$text,function(row) iconv(row, "latin1", "ASCII",sub=""))
str(trump_text)

library(tm)
trump_corpus <- Corpus(VectorSource(trump_text))
trump_corpus
inspect(trump_corpus[1])

library(wordcloud)
trump_clean <- tm_map(trump_corpus, removePunctuation)
trump_clean <- tm_map(trump_clean, removeWords, stopwords("english"))
trump_clean <- tm_map(trump_clean, removeNumbers)
trump_clean <- tm_map(trump_clean, stripWhitespace)
wordcloud(trump_clean,random.order=F,max.words=80,col=rainbow(50), scale=c(3,5,1))