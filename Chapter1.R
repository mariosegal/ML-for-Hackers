rm(list=ls())
ufo <- 

library(RCurl)
x <- getURL("https://raw.githubusercontent.com/johnmyleswhite/ML_for_Hackers/master/01-Introduction/data/ufo/ufo_awesome.tsv")
#y <- "https://raw.github.com/johnmyleswhite/ML_for_Hackers/tree/master/01-Introduction/data/ufo/ufo_awesome.tsv"
ufo <- read.delim(text=x,sep="\t",stringsAsFactors=F,header=F,na.strings="")
names(ufo) <- c("DateOcurred","DateReported","Location","ShortDescription","Duration","LongDescription")


ufo$DateOcurred <- as.Date(ufo$DateOcurred,format="%Y%m%d")
head(ufo[which(nchar(ufo$DateOcurred) !=8 | nchar(ufo$DateReported) != 8),1])

good.rows <- ifelse(nchar(ufo$DateOcurred)!=8 | nchar(ufo$DateReported)!=8,F,T)
table(good.rows)
ufo <- ufo[good.rows]


setwd("~/ML for Hackers")
save.image()
