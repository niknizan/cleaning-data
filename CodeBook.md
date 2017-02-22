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
  
## Identifiers

- subject - The ID of the test subject
- activity - The type of activity performed when the corresponding measurements were taken

## Variable names
- TimeBodyAccelerometerMeanX
- TimeBodyAccelerometerMeanY
- TimeBodyAccelerometerMeanZ
- TimeBodyAccelerometerStdX
- TimeBodyAccelerometerStdY
- TimeBodyAccelerometerStdZ
- TimeGravityAccelerometerMeanX
- TimeGravityAccelerometerMeanY
- TimeGravityAccelerometerMeanZ
- TimeGravityAccelerometerStdX
- TimeGravityAccelerometerStdY
- TimeGravityAccelerometerStdZ
- TimeBodyAccelerometerJerkMeanX
- TimeBodyAccelerometerJerkMeanY
- TimeBodyAccelerometerJerkMeanZ
- TimeBodyAccelerometerJerkStdX
- TimeBodyAccelerometerJerkStdY
- TimeBodyAccelerometerJerkStdZ
- TimeBodyGyroscopeMeanX
- TimeBodyGyroscopeMeanY
- TimeBodyGyroscopeMeanZ
- TimeBodyGyroscopeStdX
- TimeBodyGyroscopeStdY
- TimeBodyGyroscopeStdZ
- TimeBodyGyroscopeJerkMeanX
- TimeBodyGyroscopeJerkMeanY
- TimeBodyGyroscopeJerkMeanZ
- TimeBodyGyroscopeJerkStdX
- TimeBodyGyroscopeJerkStdY
- TimeBodyGyroscopeJerkStdZ
- TimeBodyAccelerometerMagnitudeMean
- TimeBodyAccelerometerMagnitudeStd
- TimeGravityAccelerometerMagnitudeMean
- TimeGravityAccelerometerMagnitudeStd
- TimeBodyAccelerometerJerkMagnitudeMean
- TimeBodyAccelerometerJerkMagnitudeStd
- TimeBodyGyroscopeMagnitudeMean
- TimeBodyGyroscopeMagnitudeStd
- TimeBodyGyroscopeJerkMagnitudeMean
- TimeBodyGyroscopeJerkMagnitudeStd
- FrequencyBodyAccelerometerMeanX
- FrequencyBodyAccelerometerMeanY
- FrequencyBodyAccelerometerMeanZ
- FrequencyBodyAccelerometerStdX
- FrequencyBodyAccelerometerStdY
- FrequencyBodyAccelerometerStdZ
- FrequencyBodyAccelerometerMeanFreqX
- FrequencyBodyAccelerometerMeanFreqY
- FrequencyBodyAccelerometerMeanFreqZ
- FrequencyBodyAccelerometerJerkMeanX
- FrequencyBodyAccelerometerJerkMeanY
- FrequencyBodyAccelerometerJerkMeanZ
- FrequencyBodyAccelerometerJerkStdX
- FrequencyBodyAccelerometerJerkStdY
- FrequencyBodyAccelerometerJerkStdZ
- FrequencyBodyAccelerometerJerkMeanFreqX
- FrequencyBodyAccelerometerJerkMeanFreqY
- FrequencyBodyAccelerometerJerkMeanFreqZ
- FrequencyBodyGyroscopeMeanX
- FrequencyBodyGyroscopeMeanY
- FrequencyBodyGyroscopeMeanZ
- FrequencyBodyGyroscopeStdX
- FrequencyBodyGyroscopeStdY
- FrequencyBodyGyroscopeStdZ
- FrequencyBodyGyroscopeMeanFreqX
- FrequencyBodyGyroscopeMeanFreqY
- FrequencyBodyGyroscopeMeanFreqZ
- FrequencyBodyAccelerometerMagnitudeMean
- FrequencyBodyAccelerometerMagnitudeStd
- FrequencyBodyAccelerometerMagnitudeMeanFreq
- FrequencyBodyAccelerometerJerkMagnitudeMean
- FrequencyBodyAccelerometerJerkMagnitudeStd
- FrequencyBodyAccelerometerJerkMagnitudeMeanFreq
- FrequencyBodyGyroscopeMagnitudeMean
- FrequencyBodyGyroscopeMagnitudeStd
- FrequencyBodyGyroscopeMagnitudeMeanFreq
- FrequencyBodyGyroscopeJerkMagnitudeMean
- FrequencyBodyGyroscopeJerkMagnitudeStd
- FrequencyBodyGyroscopeJerkMagnitudeMeanFreq
