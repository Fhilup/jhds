---
title: "Getting & Cleaning Data Final Assignment - CodeBook"
author: "Fhil"
date: "July 4, 2018"
output: html_document
---

##CodeBook Intro

This code book is for the `tidy.txt` file in this repository.  Refer to the README.md file in this repository for assignment information and general instructions.  This codebook includes the following sections:

* Variables
* Data
* Transformations

###Variables

####Identifiers

* `subject` identifies the subject by number
* `activity` identifies activity, six possible values pulled from `activity_labels.txt` file
    + `Walking` (1)
    + `Walking Upstairs` (2)
    + `Walking Downstairs` (3)
    + `Sitting` (4)
    + `Standing` (5)
    + `Laying` (6)
    
####Measurements

#####Time Domain - Body Acceleration Means
*  `time_Body_Accelerometer_Mean_X`
*  `time_Body_Accelerometer_Mean_Y`
*  `time_Body_Accelerometer_Mean_Z`

#####Time Domain - Body Acceleration Standard Deviations
*  `time_Body_Accelerometer_StandardDeviation_X`
*  `time_Body_Accelerometer_StandardDeviation_Y`
*  `time_Body_Accelerometer_StandardDeviation_Z`

#####Time Domain - Gravity Acceleration Standard Deviations
*  `time_Gravity_Accelerometer_Mean_X`
*  `time_Gravity_Accelerometer_Mean_Y`
*  `time_Gravity_Accelerometer_Mean_Z`

#####Time Domain - Gravity Acceleration Standard Deviations
*  `time_Gravity_Accelerometer_StandardDeviation_X`
*  `time_Gravity_Accelerometer_StandardDeviation_Y`
*  `time_Gravity_Accelerometer_StandardDeviation_Z`

#####Time Domain - Body Acceleration Jerk Means
*  `time_Body_Accelerometer_Jerk_Mean_X`
*  `time_Body_Accelerometer_Jerk_Mean_Y`
*  `time_Body_Accelerometer_Jerk_Mean_Z`

#####Time Domain - Acceleration Jerk Standard Deviations
*  `time_Body_Accelerometer_Jerk_StandardDeviation_X`
*  `time_Body_Accelerometer_Jerk_StandardDeviation_Y`
*  `time_Body_Accelerometer_Jerk_StandardDeviation_Z`

#####Time Domain - Body Gyroscope Means
*  `time_Body_Gyroscope_Mean_X`
*  `time_Body_Gyroscope_Mean_Y`
*  `time_Body_Gyroscope_Mean_Z`

#####Time Domain - Body Gyroscrope Standard Deviations
*  `time_Body_Gyroscope_StandardDeviation_X`
*  `time_Body_Gyroscope_StandardDeviation_Y`
*  `time_Body_Gyroscope_StandardDeviation_Z`

#####Time Domain - Body Gyroscope Jerk Means
*  `time_Body_Gyroscope_Jerk_Mean_X`
*  `time_Body_Gyroscope_Jerk_Mean_Y`
*  `time_Body_Gyroscope_Jerk_Mean_Z`

#####Time Domain - Body Gyroscope Jerk Standard Deviations
*  `time_Body_Gyroscope_Jerk_StandardDeviation_X`
*  `time_Body_Gyroscope_Jerk_StandardDeviation_Y`
*  `time_Body_Gyroscope_Jerk_StandardDeviation_Z`

#####Time Domain - Body Acceleration Magnitude Mean & Std Dev.
*  `time_Body_Accelerometer_Magnitude_Mean_`
*  `time_Body_Accelerometer_Magnitude_StandardDeviation_`

#####Time Domain - Gravity Acceleration Magnitude Mean & Std Dev.
*  `time_Gravity_Accelerometer_Magnitude_Mean_`
*  `time_Gravity_Accelerometer_Magnitude_StandardDeviation_`

#####Time Domain - Body Acceleration Jerk Magnitude Mean & Std Dev.
*  `time_Body_Accelerometer_Jerk_Magnitude_Mean_`
*  `time_Body_Accelerometer_Jerk_Magnitude_StandardDeviation_`

#####Time Domain - Body Gyroscope Magitude Mean & Std Dev.
*  `time_Body_Gyroscope_Magnitude_Mean_`
*  `time_Body_Gyroscope_Magnitude_StandardDeviation_`

#####Time Domain - Body Gyroscope Jerk Magitude Mean & Std Dev.
*  `time_Body_Gyroscope_Jerk_Magnitude_Mean_`
*  `time_Body_Gyroscope_Jerk_Magnitude_StandardDeviation_`

#####Frequency Domain - Body Acceleration Means
*  `frequency_Body_Accelerometer_Mean_X`
*  `frequency_Body_Accelerometer_Mean_Y`
*  `frequency_Body_Accelerometer_Mean_Z`

#####Frequency Domain - Body Acceleration Standard Deviations
*  `frequency_Body_Accelerometer_StandardDeviation_X`
*  `frequency_Body_Accelerometer_StandardDeviation_Y`
*  `frequency_Body_Accelerometer_StandardDeviation_Z`

#####Frequency Domain - Body Acceleration Mean Frequencies
*  `frequency_Body_Accelerometer_Mean_Frequency_X`
*  `frequency_Body_Accelerometer_Mean_Frequency_Y`
*  `frequency_Body_Accelerometer_Mean_Frequency_Z`

#####Frequency Domain - Body Acceleration Jerk Means
*  `frequency_Body_Accelerometer_Jerk_Mean_X`
*  `frequency_Body_Accelerometer_Jerk_Mean_Y`
*  `frequency_Body_Accelerometer_Jerk_Mean_Z`

#####Frequency Domain - Body Acceleration Jerk Std Dev.
*  `frequency_Body_Accelerometer_Jerk_StandardDeviation_X`
*  `frequency_Body_Accelerometer_Jerk_StandardDeviation_Y`
*  `frequency_Body_Accelerometer_Jerk_StandardDeviation_Z`

#####Frequency Domain - Body Acceleration Jerk Mean Freqencies
*  `frequency_Body_Accelerometer_Jerk_Mean_Frequency_X`
*  `frequency_Body_Accelerometer_Jerk_Mean_Frequency_Y`
*  `frequency_Body_Accelerometer_Jerk_Mean_Frequency_Z`

#####Frequency Domain - Body Gyroscope Means
*  `frequency_Body_Gyroscope_Mean_X`
*  `frequency_Body_Gyroscope_Mean_Y`
*  `frequency_Body_Gyroscope_Mean_Z`

#####Frequency Domain - Body Gyroscope Standard Deviations
*  `frequency_Body_Gyroscope_StandardDeviation_X`
*  `frequency_Body_Gyroscope_StandardDeviation_Y`
*  `frequency_Body_Gyroscope_StandardDeviation_Z`

#####Frequency Domain - Body Gyroscope Mean Frequency
*  `frequency_Body_Gyroscope_Mean_Frequency_X`
*  `frequency_Body_Gyroscope_Mean_Frequency_Y`
*  `frequency_Body_Gyroscope_Mean_Frequency_Z`

#####Frequency Domain - Body Acceleration Magnitude Mean, Std Dev., & Mean Freq.
*  `frequency_Body_Accelerometer_Magnitude_Mean_`
*  `frequency_Body_Accelerometer_Magnitude_StandardDeviation_`
*  `frequency_Body_Accelerometer_Magnitude_Mean_Frequency_`

#####Frequency Domain - Body Acceleration Jerk Magnitude Mean, Std Dev., Mean Freq.
*  `frequency_Body_Accelerometer_Jerk_Magnitude_Mean_`
*  `frequency_Body_Accelerometer_Jerk_Magnitude_StandardDeviation_`
*  `frequency_Body_Accelerometer_Jerk_Magnitude_Mean_Frequency_`

#####Frequency Domain - Body Gyroscope Magnitude Mean, Std Dev., Mean Freq.
*  `frequency_Body_Gyroscope_Magnitude_Mean_`
*  `frequency_Body_Gyroscope_Magnitude_StandardDeviation_`
*  `frequency_Body_Gyroscope_Magnitude_Mean_Frequency_`

#####Frequency Domain - Body Gyrscope Jerk Magnitude Mean, Std Dev., Mean Freq.
*  `frequency_Body_Gyroscope_Jerk_Magnitude_Mean_`
*  `frequency_Body_Gyroscope_Jerk_Magnitude_StandardDeviation_`
*  `frequency_Body_Gyroscope_Jerk_Magnitude_Mean_Frequency_`

####Transformations
The transformations used in `run_analysis.R` were to manipulate the dataset found at  https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip

Although there were five steps to the assignment, we had to prep the data to use it.  The following transformations were used, in order, after the data was downloaded, unzipped, and the .txt files were read in from the `test` folder with UCI Har Dataset & `train` folder within UCI Har Dataset & `activity_labels.txt`:

1. Merged the datasets from test and train files using `rbind()` & `cbind()` commands
    + Renamed columns in new merged dataset, taking the labels from `features.txt` file within UCI Har Dataset folder
2. Extracted only columns with names that included subject, activity, mean, and standard deviation (`subject|activity|mean|std`) using the `grepl` command
3. Uses names extracted from `activity_labels.txt` in combination with the `factor()` command to create *descriptive activity names*
4. Label the data set with descriptive variable names.  Utilized `gsub` command to clean up the special characters, rename abbreviations, remove typos
    + For example, `tBodyAcc-mean()-Z` was renamed to `time_Body_Accelerometer_Mean_z`
    + Any abbreviations or short-hand were changed to their full names; names were separated with underscores
5. Utilize calls from `dplyr` package to group & summarize the data
    + Write organized, tidy data to text file called `tidy.txt`
    
####Notes
* See `README.txt` for more information
* CodeBook herein is from `run_analysis.R` script