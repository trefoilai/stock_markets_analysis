# This code was written by B.Pavlyshenko, 2013, contact e-mail: b.pavlyshenko@gmail.com
#this.dir <- dirname(parent.frame(2)$ofile); setwd(this.dir);options(warn=-1); Sys.setlocale("LC_TIME", "English");

library(twitteR) 
library(tm) 
library("tseries") 
library("zoo") 
library("xts") 
library("forecast")
library("quantmod")
library("wordcloud")
consumer_key      <- "9bzWSSlx2eDMIsFlYIZq3sz2n"
consumer_secret   <- "SW81Afbd9iAXzEwPsBMEoy5LEiGDnnKGpzXJN2JhraJNjvP08t"
access_token      <- "4599019833-uhR78hDXNAOfoSg4hHtU5nL9eQ3WXJT43Im6J4n"
access_secret     <- "hVs8Ngl05seFrzyoNnQKtMdB58CKIJZXU7QFe8k4dfA7L"

setup_twitter_oauth(consumer_key, consumer_secret, access_token, access_secret)
source("inc/config.r")
source("inc/functions_tw.r")
source("inc/functions_txt.r")
source("inc/functions_analysis.r")
source("inc/functions_f_ts.r")
#source("inc/functions_tcltk.r")

 

 

 
