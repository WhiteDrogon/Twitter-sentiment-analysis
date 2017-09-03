#extract tweets # now it is in the form of a list
trump.tweets = searchTwitter("trump",n=150)

#convert it to data frame so as to present more information
df <- do.call("rbind",lapply(trump.tweets,as.data.frame))

#cleaning up text 
df$text <- sapply(df$text, function(row) iconv(row, "latin1", "ASCII", sub=""))
df$text = gsub("(f|ht)tp(s?)://(.*)[.][a-z]+","",df$text)
sample <- df$text



