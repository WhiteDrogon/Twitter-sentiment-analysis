pos.words = scan('C:/Users/fsstest1/My Documents/analysis/positive.txt' ,  what='character', comment.char=';')
neg.words = scan('C:/Users/fsstest1/My Documents/analysis/negative.txt' ,  what='character', comment.char=';')

pos.words = c(pos.words, 'congrats', 'prizes', 'thanks', 'prize', 'thnx', 'grt','plz', 'trending', 'recovering', 'brainstorm', 'leader')
neg.words = c(neg.words, 'fight','fighting', 'wtf', 'arrest', 'no', 'not')
