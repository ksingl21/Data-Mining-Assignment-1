---
  title: "Assignment 1 Classification models - bankData"
author: "Athena Gonzalez, Rosaura Ocampo,Kapil Singla"

---
  
 
#load the tidyverse set of libraries - for data manipulations
library(tidyverse)

#read the data, and examine summary statistics
bankData=read_csv2('bank-full.csv')   #read_csv2 is used since the data has ';' as delimiter

#look at the variables 
glimpse(bankData)

#get summary stats of the variables
summary(bankData)

#Convert the chr variables to factor
bData <- bankData %>% mutate_if(is.character,as.factor)

str(bData)


#calculate the column sums - the number of missing values in each column
colSums(is.na(bankData))
#or to get the names of columns in bankData which have missing values
colnames(bankData)[colSums(is.na(bankData))>0]

#get summary statistics on the variables
summary(bData)


