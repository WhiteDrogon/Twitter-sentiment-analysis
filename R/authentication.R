library(ROAuth)
library(twitteR)
consumer_key<-	"PNi4V8XD2HvPDMnPaYu2bqzDK"
consumer_secret<-"	5IuNus5DUg5yEc2kOwP7qHvnAtCwIFU6FmTCdsYj5ppDpJHti4"
access_token<-"	876296939725246464-lyOOHIG2jdhP0HWwWSZGAn27PfuvW38"
access_token_secret<-"	8MzvleU4QdGDhxRWYVHE0Cttn6gId7teQBqebPDztqS2D"
download.file(url="http://curl.haxx.se/ca/cacert.pem",destfile="cacert.pem")
setup_twitter_oauth(consumer_key, consumer_secret, access_token, access_token_secret)

cred<-OAuthFactory$new(consumerKey=consumer_key,
	consumerSecret=consumer_secret,
	requestURL=	'https://api.twitter.com/oauth/request_token',
	accessURL='https://api.twitter.com/oauth/access_token',
	authURL='https://api.twitter.com/oauth/authorize'

cred$handshake(cainfo="cacert.pem")
