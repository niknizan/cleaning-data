---
title: "CodeBook.md"
author: "Nik Nizan"
date: "February 22, 2017"
output: html_document
---

Getting and Cleaning Data (Coursera). Course Project Codebook
==============================================================


## Original (raw) Data from [UCI Machine Learning Repository](http://archive.ics.uci.edu/ml/index.html)

Contains Human Activity Recognition database built from the recordings of 30 subjects performing 
activities of daily living (ADL) while carrying a waist-mounted smartphone with embedded inertial sensors.

Original data collected from the smartphones accelerometer and gyroscope 3-axial raw signals, 
further processed using various signal processing techniques resulting in a measurement vector with
561 features.

- [source](https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip) 
- [description](http://archive.ics.uci.edu/ml/datasets/Human+Activity+Recognition+Using+Smartphones)

For detailed description of the original dataset, refer to `README.txt` and `features_info.txt` bundeled with the original data set zip archive.
The original data set is split into training and test sets where each partition consists of three files that contain
* the measurements from the accelerometer and gyroscope
* the labels for activity
* the subject identifiers

# Tidy Data
Contains aggregated mean values of all mean and standard deviation values from original data set grouped by activity  and subject, resulting in a total of 180 records.

## Attribute Information:
For each record in the tidy data it is provided: 
- Its activity label (one out of 6 different activities):
  - LAYING
  - SITTING
  - STANDING
  - WALKING
  - WALKING_DOWNSTAIR
  - WALKING_UPSTAIRS
- An identifier of the subject who carried out the experiment (30 different subjects, IDs ranging from {1,2,3,...,30})
- 79 features with the
  - Mean of Triaxial acceleration from the accelerometer (total acceleration) and the estimated body acceleration. 
  - Mean of Triaxial Angular velocity from the gyroscope. 
  - numerical value ranging in [-1,1]

## Variable names
- subject
- activity
- TimeBodyAccelerometer-mean()-X
- TimeBodyAccelerometer-mean()-Y
- TimeBodyAccelerometer-mean()-Z
- TimeBodyAccelerometer-std()-X
- TimeBodyAccelerometer-std()-Y
- TimeBodyAccelerometer-std()-Z
- TimeGravityAccelerometer-mean()-X
- TimeGravityAccelerometer-mean()-Y
- TimeGravityAccelerometer-mean()-Z
- TimeGravityAccelerometer-std()-X
- TimeGravityAccelerometer-std()-Y
- TimeGravityAccelerometer-std()-Z
- TimeBodyAccelerometerJerk-mean()-X
- TimeBodyAccelerometerJerk-mean()-Y
- TimeBodyAccelerometerJerk-mean()-Z
- TimeBodyAccelerometerJerk-std()-X
- TimeBodyAccelerometerJerk-std()-Y
- TimeBodyAccelerometerJerk-std()-Z
- TimeBodyGyroscope-mean()-X
- TimeBodyGyroscope-mean()-Y
- TimeBodyGyroscope-mean()-Z
- TimeBodyGyroscope-std()-X
- TimeBodyGyroscope-std()-Y
- TimeBodyGyroscope-std()-Z
- TimeBodyGyroscopeJerk-mean()-X
- TimeBodyGyroscopeJerk-mean()-Y
- TimeBodyGyroscopeJerk-mean()-Z
- TimeBodyGyroscopeJerk-std()-X
- TimeBodyGyroscopeJerk-std()-Y
- TimeBodyGyroscopeJerk-std()-Z
- TimeBodyAccelerometerMagnitude-mean()
- TimeBodyAccelerometerMagnitude-std()
- TimeGravityAccelerometerMagnitude-mean()
- TimeGravityAccelerometerMagnitude-std()
- TimeBodyAccelerometerJerkMagnitude-mean()
- TimeBodyAccelerometerJerkMagnitude-std()
- TimeBodyGyroscopeMagnitude-mean()
- TimeBodyGyroscopeMagnitude-std()
- TimeBodyGyroscopeJerkMagnitude-mean()
- TimeBodyGyroscopeJerkMagnitude-std()
- FrequencyBodyAccelerometer-mean()-X
- FrequencyBodyAccelerometer-mean()-Y
- FrequencyBodyAccelerometer-mean()-Z
- FrequencyBodyAccelerometer-std()-X
- FrequencyBodyAccelerometer-std()-Y
- FrequencyBodyAccelerometer-std()-Z
- FrequencyBodyAccelerometerJerk-mean()-X
- FrequencyBodyAccelerometerJerk-mean()-Y
- FrequencyBodyAccelerometerJerk-mean()-Z
- -std()-X
- FrequencyBodyAccelerometerJerk-std()-Y
- FrequencyBodyAccelerometerJerk-std()-Z
- FrequencyBodyGyroscope-mean()-X
- FrequencyBodyGyroscope-mean()-Y
- FrequencyBodyGyroscope-mean()-Z
- FrequencyBodyGyroscope-std()-X
- FrequencyBodyGyroscope-std()-Y
- FrequencyBodyGyroscope-std()-Z
- FrequencyBodyAccelerometerMagnitude-mean()
- FrequencyBodyAccelerometerMagnitude-std()
- FrequencyBodyAccelerometerJerkMagnitude-mean()
- FrequencyBodyAccelerometerJerkMagnitude-std()
- FrequencyBodyGyroscopeMagnitude-mean()
- FrequencyBodyGyroscopeMagnitude-std()
- FrequencyBodyGyroscopeJerkMagnitude-mean()
- FrequencyBodyGyroscopeJerkMagnitude-std()