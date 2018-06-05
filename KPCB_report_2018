library(tm)
library(SnowballC)
library(wordcloud)
library(RColorBrewer)

download.file("http://kpcbweb2.s3.amazonaws.com/files/121/INTERNET-TRENDS-REPORT-2018.pdf?1528134983",
              "itr.pdf")

read <- readPDF(control = list(text = "-layout"))

document <- Corpus(URISource("itr.pdf"), readerControl = list(reader = read))
doc <- content(document[[1]])
docus <- Corpus(VectorSource(doc))
#toSpace <- content_transformer(function (x , pattern ) gsub(pattern, " ", x))
docus <- tm_map(docus, toSpace, "/")
docus <- tm_map(docus, toSpace, "@")
docus <- tm_map(docus, toSpace, "\\|")
# Convert the text to lower case
#docu <- tm_map(docu, content_transformer(tolower))
# Remove numbers
docus <- tm_map(docus, removeNumbers)
# Remove english common stopwords
docus <- tm_map(docus, removeWords, stopwords("english"))
#Remove your own stop word
docus <- tm_map(docus, removeWords, 
                c("<e2><80><a2>", 
                  "<e2><80><93>",
                  "source","note")) 
# Remove punctuations
docs <- tm_map(docs, removePunctuation)
# Eliminate extra white spaces
docs <- tm_map(docs, stripWhitespace)
# Text stemming
docs <- tm_map(docs, stemDocument)

dtm3 <- TermDocumentMatrix(docus)
m3 <- as.matrix(dtm3)
v3 <- sort(rowSums(m3),decreasing=TRUE)
d3 <- data.frame(word = names(v3),freq=v3)
d3 = d3[-c(2,5,10), ]
head(d3, 30)
View(d3)

wordcloud(words = d3$word, freq = d3$freq, 
          min.freq = 20,
          max.words=200, random.order=FALSE, rot.per=0.35, 
          colors=brewer.pal(8, "Dark2"))
