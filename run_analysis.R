
## Functions definition
## Extracts only the measurements on the mean and standard deviation for each measurement. 
getMeanStdValues <- function(){
  mean <- "mean"
  std <- "std"
  features <- read.table("features.txt")
  means <- filter(features, grepl(mean,features$V2) )
  stds <- filter(features, grepl(std,features$V2) )
  features <- rbind(means,stds)
  features <- filter(features, !grepl("Freq", features$V2))
  ordered <- features[order(features$V1), ]
  ordered
}

library(dplyr)
## 0.- Read Data 

al <- read.table("activity_labels.txt")
## TEST information

test_x <- read.table("test/X_test.txt")
test_y <- read.table("test/y_test.txt")
subject_test <- read.table("test/subject_test.txt")

## TRAIN information

train_x <- read.table("train/X_train.txt")
train_y <- read.table("train/y_train.txt")
subject_train <- read.table("train/subject_train.txt")



## 1.- Merge dataset train+test

x <- rbind(train_x,test_x)
y <- rbind(train_y,test_y)
s <- rbind(subject_train, subject_test)


## Label subject values
colnames(s) <- "Subject"

## Label activity values
labels_ac <- data.frame(al$V2[match(y$V1,al$V1)])
colnames(labels_ac) <- "Activity"

###Appropriately labels the data set with descriptive variable names. 
myfeatures <- getMeanStdValues()
myfeatures$V1 = paste("V", myfeatures$V1, sep="")

mydf <- x[,myfeatures$V1]
names(mydf) <- myfeatures$V2

## Add subject column
mydf <- cbind(s, mydf)

## Add activity column
mydf <- cbind(labels_ac, mydf)



### 5.From the data set in step 4, creates a second, independent tidy data set with the average of each variable for each activity and each subject.
mydr <- tbl_df(mydf)
gmydr <- group_by(mydr, Activity, Subject)
res_df <- summarise_each(gmydr, funs(mean))

## Write dataset to a txt file.
write.table(res_df, file="result_dataset.txt", row.names=FALSE)

