

file_data <- read.csv("outcome-of-care-measures.csv",
                      colClasses = "character")

head(file_data) 

file_data[,11] <- as.numeric (file_data[,11]) 

hist(file_data[,11]) 

