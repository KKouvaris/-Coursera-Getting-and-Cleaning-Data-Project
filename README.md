# Getting and Cleaning Data Project (Coursera) 
Konstantinos Kouvaris

This repository is used for the course project for the Johns Hopkins Getting and Cleaning Data course in Coursera.
It includes:
  1) "run_analysis.R": an R script file with the code the performs the necessary analysis on the data for the assignment 
  2) "tidyData.txt": a txt file with all the resulting tidy data.

# Overview
The aim of the project is the demonstration of the process of collecting and cleaning data which can then be used for downstream analysis. Specifically, the data used for this project are about wearable computing and were collected from the accelerometers using Samsung Galaxy smartphones. The raw data can be obtained here: [UCI HAR Dataset](http://archive.ics.uci.edu/ml/datasets/Human+Activity+Recognition+Using+Smartphones)

Further information regarding the course project is available here: [Course Project (Coursera)](https://www.coursera.org/learn/data-cleaning/peer/FIZtT/getting-and-cleaning-data-course-project)

# Analysis
The analysis requires the following steps to be performed:

1)   Download the raw data from the link provided.
2)   Read and store the training and test sets into appropriate variables (local)
3)   Read and store the activity, subject and features files into appropriate variables (local)
4)   Merge training and test set into one dataset.
5)   Select the mean and standard deviation values for each measurement.
6)   Use descriptive names for the activities in the dataset.
7)   Use descriptive names for the variables in the dataset.
8)   Generate a new *tidy* dataset from dataset (4) reporting the average of each variable for each activity and each subject

