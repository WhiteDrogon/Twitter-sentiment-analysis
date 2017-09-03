result = score.sentiment(sample,pos.words ,neg.words)
library(reshape)
test1 = result[[1]]
test2 = result[[2]]
test3 = result[[3]]

test1$text = NULL
test2$text = NULL
test3$text = NULL

q1 = test1[1,]
q2 = test2[2,]
q3 = test3[1,]

qq1 = melt(q1 , var='score')
qq2 = melt(q2 , var='positive')
qq3 = melt(q3 , var='negative')

qq1['score'] = NULL
qq2['positive'] = NULL
qq3['negative'] = NULL

table1 = data.frame(Text=result[[1]]$text, score=qq1)
table2 = data.frame(Text=result[[2]]$text, score=qq2)
table3 = data.frame(Text=result[[3]]$text, score=qq3)

table_final = data.frame(Text = table1$Text,score = table1$value, positive = table2$value, negative=table3$value)