---
title: "Getting & Cleaning Data README - Final Assignment"
author: "Fhil"
date: "July 4, 2018"
output: html_document
---

##Assignment Prompt from Coursera - July 2018
The purpose of this project is to demonstrate your ability to collect, work with, and clean a data set. The goal is to prepare tidy data that can be used for later analysis. You will be graded by your peers on a series of yes/no questions related to the project. You will be required to submit: 1) a tidy data set as described below, 2) a link to a Github repository with your script for performing the analysis, and 3) a code book that describes the variables, the data, and any transformations or work that you performed to clean up the data called CodeBook.md. You should also include a README.md in the repo with your scripts. This repo explains how all of the scripts work and how they are connected.

One of the most exciting areas in all of data science right now is wearable computing - see for example this article . Companies like Fitbit, Nike, and Jawbone Up are racing to develop the most advanced algorithms to attract new users. The data linked to from the course website represent data collected from the accelerometers from the Samsung Galaxy S smartphone. A full description is available at the site where the data was obtained:

http://archive.ics.uci.edu/ml/datasets/Human+Activity+Recognition+Using+Smartphones

Here are the data for the project:

https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip

You should create one R script called run_analysis.R that does the following:

1. Merges the training and the test sets to create one data set.
2. Extracts only the measurements on the mean and standard deviation for each measurement.
3. Uses descriptive activity names to name the activities in the data set
4. Appropriately labels the data set with descriptive variable names.
5. From the data set in step 4, creates a second, independent tidy data set with the average of each variable for each activity and each subject.

##Creating the Data Set
Per the assignment, the R script used is called `run_analysis.R` and is found in this repository.  The script downloads a .zip file, opens the contents, to a specific location, reads in the data, renames columns, merges the data, extracts the relevant data, and then merges the data to a next file called `tidy.txt`.

* Sets working directory
* Downloads file from specified URL
* Unzips files to folder
* Reads in data from train & test folders; activity labels; labels columns of activity labels

###Step 1
Merges data sets

###Step 2
Extracts relevant data (subject, activity, mean, & std)

###Step 3
Assigns activity labels to activity column

###Step 4
Cleans up column names & makes more descriptive

###Step 5
Groups & summarizes data, writes to table in `tidy.txt` file

##Repository Contents
* `run_analysis.R`, the R script used for the assignment
* `tidy.txt`, the text file the tidy data is written to
* `README.md`, file providing overview of data & steps to create

####Version Information
This script was created using:

* R version 3.5.0 (2018-04-23)
* Platform: x86_64-w64-mingw32/x64 (64-bit)
* Running under: Windows 7 x64 (build 7601) Service Pack 1
* dplyr_0.7.5