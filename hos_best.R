# RANK BEST HOSPITAL for each OUTCOME

file_data <- read.csv("outcome-of-care-measures.csv") 

str (file_data) 

hos<- file_data[, c(2,7,11,17,23)] 
                           
str(hos)  

#rename 

names(hos) <- c("hospital", "state", "outcome")

str(names(hos))   

colind<- file_data[, c(11,17,23)]

str(colind)

# na.omit 

hos2 <-na.omit (hos) 
str (hos2) 

# sort

hos3 <-hos2 [order (hos2 [,2], hos2 [,3], hos2[,1]),] 

str (hos3) 

#split

hos4 <- split (hos3, hos3$state) 

str(hos4) 
summary (hos4) 


# Best Hospital by State and outcome

# eg no 1
#GOTO HOS 3
#Goto state SC
#Goto outcome col 1 - heart attack
#Best Hos 3668 - Heart Attack rate of 12.9


# eg 2
# GOTO HOS3
# Goto state NY
# Goto outcome col 3 - pneumonia
# Best Hos 2835 - Pneumonia rate of 7.4

# eg 3
#GOTO HOS 3
#Goto state AK
#Goto outcome col 3 - pneumonia
#Best Hos104 -Pneumonia rate of 9.7

# Note that rate of double digit with 10 ascending
#         then single digit with ? to 9.9
         

#lapply

appl<- lapply (hos4, "[", 5) 

str(appl) 
head(appl,1) 

# Result:Best Hos 104 - Pneumoniarate of 9.7
# Col 5 is outcome pneumonia
# Num 1 is list of 1 state - first is Ak

appl$AK

# by state giving hos num and rating of outcome
# Result : Best Hos 104 - Pneumonia of 9.7
appl $NY 

# Result: Best Hos 2835 - Pneumonia of 7.4          

appl2 <- lapply (hos4, "[", 3)

# Col 3 is outcome heart attack

str(appl2) 

appl2$SC

# Result Best Hos 3668- Heart Attack of 12.9 

END

 





 
