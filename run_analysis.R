## First of All, Let's Load The Needed Library
library(reshape2)

## Loading All Needed DataSets First

## The Training Sets Were Picked From the ./train Directory
X_train <- read.table("./train/X_train.txt")
y_train <- read.table("./train/y_train.txt")
subject_train <- read.table("./train/subject_train.txt")

## The Testing Sets Were Picked From the ./test Directory
y_test <- read.table("./test/y_test.txt")
X_test <- read.table("./test/X_test.txt")
subject_test <- read.table("./test/subject_test.txt")

##Adding Names to Subject DataSets
names(subject_train) <- "subjectID"
names(subject_test) <- "subjectID"

##Loading Column Names into Training and Testing Data Sets
featureNames <- read.table("features.txt")

##The str() command gives two variables to featureNames V1 and V2, the Names are in V2
names(X_train) <- featureNames$V2
names(X_test) <- featureNames$V2

##Naming the y_train and y_test Datasets with "activity"
names(y_train) <- "activity"
names(y_test) <- "activity"

##Now Time to Combine All Data with cbind command.
trainData <- cbind(subject_train, y_train, X_train)
testData <- cbind(subject_test, y_test, X_test)
AllData <- rbind(trainData, testData)

##Now Let's Create a Logic Vector with all the variable Names containing mean or std and also keep sure that we have "subjectID" and "activity" and this vector
SelectedCols <- grepl("mean\\(\\)", names(AllData)) | grepl("std\\(\\)", names(AllData)) | grepl("subjectID", names(AllData)) | grepl("activity", names(AllData))

##Now Create a DataSet will only Thoses Variables using the SelectedCols vector
SelectedData <- AllData[, SelectedCols]

##Properly name activities using the activities file and also coverting thoses to a factor, pay attention to the Order
SelectedData$activity <- factor(SelectedData$activity, labels=c("Walking", "Walking Upstairs", "Walking Downstairs", "Sitting", "Standing", "Laying"))

##Preparing The Tidy DataSet using subjectID and activity
meltedData <- melt(SelectedData, id=c("subjectID","activity"))
tidyData <- dcast(meltedData, subjectID+activity ~ variable, mean)

##Saving The DataSet in New CSV File
write.table(tidyData, "tidyData.txt", row.names=FALSE)
