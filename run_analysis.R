#########################################################################################################################

# Title:          Getting and Cleaning Data Course Project (Coursera)
# Author:         Kostas Kouvaris
# Date:           10/06/2017

# run_analysis.R: The code here is used to perform the following analysis over the UCI HAR Dataset
#                 (https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip):
# 
#                    1. Merge training and test set into one dataset.
#                    2. Select the mean and standard deviation values for each measurement.
#                    3. Use descriptive names for the activities in the dataset.
#                    4. Use descriptive names for the variables in the dataset.
#                    5. Generate a new *tidy* dataset from dataset (4) reporting the average of each
#                       variable for each activity and each subject

#########################################################################################################################
# Initialise
#########################################################################################################################

rm(list = ls(all = TRUE)) #Clear workspace
library(data.table)
library(dplyr)

#########################################################################################################################
# Step 0: Retrieve the dataset
#########################################################################################################################

# Download the respective dataset
#fileUrl <- "https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip"
#if(!file.exists("./data")){dir.create("./data")}
#destFileName = "./data/UCI_HAR_Dataset.zip"
#download.file(fileUrl, destfile = destFileName)

# Unzip data
#if(file.exists(destFileName)){ unzip(zipfile=destFileName, exdir="./data") }

#########################################################################################################################
# Step 1: Merge training and test data
#########################################################################################################################

# Read in data from files

# Change working directory (point to the dataset)
setwd("./data/UCI HAR Dataset")

# Import from files
features     = read.table("./features.txt", header=FALSE)
activityType = read.table("./activity_labels.txt", header=FALSE)

# Training data
trainX       = read.table("./train/x_train.txt", header=FALSE)
trainY       = read.table("./train/y_train.txt", header=FALSE)
trainSubject = read.table("./train/subject_train.txt", header=FALSE)

# Test data
testX        = read.table("./test/x_test.txt", header=FALSE)
testY        = read.table("./test/y_test.txt", header=FALSE)
testSubject  = read.table("./test/subject_test.txt", header=FALSE)

# Assign names to column variables
colnames(trainX) = colnames(testX) = t(features[2])
colnames(trainY) = colnames(testY) = "Activity"
colnames(trainSubject)  = colnames(testSubject) = "SubjectID"
colnames(activityType) = c("ActivityCode","activityLabel")

# Create train set by merging trainingX, trainingY and trainingSubject
trainSet = cbind(trainSubject, trainX, trainY)

# Create test set by merging testX, testY and testSubject
testSet = cbind(testSubject, testX, testY)

# Merge training and test set into one dataset
unifiedSet = rbind(trainSet, testSet)

#########################################################################################################################
# Step 2: Extract mean and std values from the measurements
#########################################################################################################################

# Get the indices of the features whose name contains either the phrase "mean()" or "std()", plus the Subject ID 
# and Activity columns
selectedFeatures = grep("SubjectID|mean\\(\\)|std\\(\\)|Activity", colnames(unifiedSet))

# Select the wanted features
unifiedSet = unifiedSet[,selectedFeatures]

#########################################################################################################################
# Step 3: Use descriptive names for the activities in the dataset
#########################################################################################################################

#Factorise the activity variable according to feature labels stored in "activityType".
unifiedSet$Activity = factor(unifiedSet$Activity, levels = activityType$ActivityCode, labels = activityType$activityLabel)

#########################################################################################################################
# Step 4: Use descriptive names for the variables in the dataset
#########################################################################################################################

# Clean up the names of the features
colnames(unifiedSet) = gsub("\\()","",colnames(unifiedSet))
colnames(unifiedSet) = gsub("^t", "time", colnames(unifiedSet))
colnames(unifiedSet) = gsub("^f", "freq", colnames(unifiedSet))
colnames(unifiedSet) = gsub("[Bb]ody[Bb]ody", "Body", colnames(unifiedSet))
colnames(unifiedSet) = gsub("[Aa]cc", "Accelerometer", colnames(unifiedSet))
colnames(unifiedSet) = gsub("[Gg]yro", "Gyroscope", colnames(unifiedSet))
colnames(unifiedSet) = gsub("[Mm]ag", "Magnitude", colnames(unifiedSet))

#########################################################################################################################
# Step 5: Generate a new *tidy* dataset summarising the average of each variable for each activity and each subject
#########################################################################################################################

# Break the dataset into groups and store it to a new variable
tidyDataset_grouped = tbl_df(unifiedSet)
tidyDataset_grouped = group_by(tidyDataset_grouped, SubjectID, Activity)

# Evaluate the average for each variable for each group (i.e., each subjectID and Activity)
tidyDataset = summarise_each(tidyDataset_grouped, funs(mean))


#########################################################################################################################
# Step 6: Export data into a txt file
#########################################################################################################################

setwd("../../")
write.table(tidyDataset, "tidyData.txt")

