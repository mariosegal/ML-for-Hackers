rm(list=ls())
ufo <- 

library(RCurl)
x <- getURL("https://raw.githubusercontent.com/johnmyleswhite/ML_for_Hackers/master/01-Introduction/data/ufo/ufo_awesome.tsv")
#y <- "https://raw.github.com/johnmyleswhite/ML_for_Hackers/tree/master/01-Introduction/data/ufo/ufo_awesome.tsv"
ufo <- read.delim(text=x,sep="\t",stringsAsFactors=F,header=F,na.strings="")
names(ufo) <- c("DateOcurred","DateReported","Location","ShortDescription","Duration","LongDescription")

library(devtools)
devtools::source_url("https://raw.github.com/johnmyleswhite/ML_for_Hackers/tree/master/01-Introduction/data/ufo/ufo_awesome.tsv")

x <- ("https://raw.githubusercontent.com/johnmyleswhite/ML_for_Hackers/master/01-Introduction/data/ufo/ufo_awesome.tsv")
ufo <- read.delim(text=x,sep="\t",stringsAsFactors=F,header=F,na.strings="")
