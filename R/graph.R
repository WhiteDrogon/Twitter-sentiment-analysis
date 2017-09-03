#graph script
hist(table_final$positive, col=rainbow(10))
hist(table_final$negative, col=rainbow(10))
hist(table_final$score, col=rainbow(10))

#pie chart 
slices <- c(sum(table_final$positive), sum(table_final$negative))
labels <- c("Positive", "Negative")
library(plotrix)
#pie(slices, labels = labels, col=rainbow(length(labels)), main="Sentiment Analysis")
pie3D(slices, labels = labels, col=rainbow(length(labels)), explode=0.00, main="Sentiment Analysis")