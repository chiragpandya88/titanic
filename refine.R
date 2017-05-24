#Packages required
#dplyr
#tidyr

#importing csv

titaniccsv <- read.csv("titanic3.csv")
titanic <- tbl_df(titaniccsv)

#Cleaning port of embarkation column
titanic$embarked[titanic$embarked == "" | titanic$embarked == " "] <- "S"

#Fill missing values in age column
#Tried to use methods like Mice and knnimputation but they took too long and R was freezing while executing
#Created function for future replacements with other methods
meanreplace <- function(x) replace(x,is.na(x),round(mean(titanic$age,na.rm=TRUE)))
titanic$age <- sapply(titanic$age,meanreplace)


#Lifeboat NAs
titanic$boat <- sub("^$","NA",titanic$boat)

#Creating new column to identify potential survivors
titanic <- mutate(titanic,has_cabin_number=ifelse(cabin != "",1,0))


#Writing the csv file
write.csv(titanic,file="titanic_clean.csv")