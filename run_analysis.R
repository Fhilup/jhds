#Getting & Cleaning Data Week 4 Final Assignment

#introduce data variable to save time if file is already downlaoded
setwd("C:/Users/u129129/Desktop/R/2. Getting & Cleaning Data/week4/assign/")
data <- "dataset.zip"

#checks if file is downloaded from url, if not, downloads to destination and records date
if(!file.exists("data")){
    url <- "https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip"
    download.file(url, destfile = "C:/Users/u129129/Desktop/R/2. Getting & Cleaning Data/week4/assign/dataset.zip")
    datedownloaded <- date()
}

#unzips files if not already unzipped
folder <- "UCI HAR Dataset"
if(!file.exists("UCI HAR Dataset")){
    unzip(data)
}

#requires dplyr
require(dplyr)

#reads in data from test, .txt files
test_subjects <- read.table(file.path(folder, "test", "subject_test.txt"))
test_set <- read.table(file.path(folder, "test", "X_test.txt"))
test_labels <- read.table(file.path(folder, "test", "y_test.txt"))

#reads in data from train, .txt files
train_subjects <- read.table(file.path(folder, "train", "subject_train.txt"))
train_set <- read.table(file.path(folder, "train", "X_train.txt"))
train_labels <- read.table(file.path(folder, "train", "y_train.txt"))

#reads in data from activity labels & features
activity_labels <- read.table("UCI HAR Dataset/activity_labels.txt")
features <- read.table("UCI HAR Dataset/features.txt")

#reads only second column & converts to characters
activity_labels[,2] <- as.character(activity_labels[,2])
features[,2] <- as.character(features[,2])

#labels columns of activity labels
colnames(activity_labels) <- c("activity_ID","activity_label")

#STEP1
#merge datasets to create one, use rbind to combine the rows of each dataset & cbind to merge the columns from test & train
merged <- rbind(cbind(test_subjects, test_set, test_labels), cbind(train_subjects, train_set, train_labels))

#can remove the unmerged, individual data tables if we want, to save space...

#give new merged dataset column names
colnames(merged) <- c("subject", features[,2], "activity")

#STEP2
#extra only relevant data - subject, activity, mean, std; value = TRUE to make sure we got the correct columns when using grep to check
extracted <- grepl("subject|activity|mean|std", colnames(merged))
merged <- merged[,extracted]

#STEP3
#use the activity labels to make descriptive names for the activity column in the merged dataset; activity column is currently integer
merged$activity <- factor(merged$activity, levels = activity_labels[,1], labels = activity_labels[,2])

#STEP4
#label the data set with descriptive variable names; remove special characters; rename abbreviations; remove typos

#create variable to store column names
merged_cols <- colnames(merged)

#remove special characters '() & -'
merged_cols_clean <- gsub("[-()]", "", merged_cols)

#renames columns; removes abbreviations; did not work when attempted in all one one....
merged_cols_clean <- gsub("^f", "frequency_", merged_cols_clean)
merged_cols_clean <- gsub("^t", "time_", merged_cols_clean)
merged_cols_clean <- gsub("Acc", "Accelerometer_", merged_cols_clean)
merged_cols_clean <- gsub("Gyro", "Gyroscope_", merged_cols_clean) 
merged_cols_clean <- gsub("mean", "Mean_", merged_cols_clean) 
merged_cols_clean <- gsub("std", "StandardDeviation_", merged_cols_clean) 
merged_cols_clean <- gsub("Jerk", "Jerk_", merged_cols_clean)
merged_cols_clean <- gsub("Mag", "Magnitude_", merged_cols_clean)
merged_cols_clean <- gsub("Freq", "Frequency_", merged_cols_clean)
merged_cols_clean <- gsub("Body|BodyBody", "Body_", merged_cols_clean)
merged_cols_clean <- gsub("Gravity", "Gravity_", merged_cols_clean)

#gives merged the new column labels
colnames(merged) <- merged_cols_clean

#STEP5
#use dplyr package to group & create summary of 'tidy data'
merged_means <- merged %>%
    group_by(subject, activity) %>%
    summarize_all(funs(mean))

#output data to .txt file
write.table(merged_means, "tidy.txt", row.names = FALSE, quote = FALSE)
