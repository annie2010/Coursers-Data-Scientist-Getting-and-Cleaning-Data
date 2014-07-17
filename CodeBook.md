# CodeBook

## Intro

### Overview

The data file “tidy_data.txt” contains the analyzed results about activity tracking through wearable mobile devices. The analyzed results are computed averages for movements about 30 subjects with 6 activities. The movements include means and standard deviations about measurements from all features in the original data source for wearable computing.

### Background

The measurements are about movements for 30 subjects (i.e. volunteers) with 6 activities. These movements are tracked as features through accelerometers and geocodes from mobile devices. Features raw data and computed data (such as mean and std) are captured in the original data source. In summary, measurements about subjects, activities and features are available from the original data source (see README.md for more information).

### Original Dataset

The original data source are about experiments that have been carried out with a group of 30 volunteers within an age bracket of 19-48 years. Each person performed six activities (WALKING, WALKING_UPSTAIRS, WALKING_DOWNSTAIRS, SITTING, STANDING, LAYING) wearing a smartphone (Samsung Galaxy S II) on the waist. Using its embedded accelerometer and gyroscope, we captured 3-axial linear acceleration and 3-axial angular velocity at a constant rate of 50Hz. The experiments have been video-recorded to label the data manually. The obtained dataset has been randomly partitioned into two sets, where 70% of the volunteers was selected for generating the training data and 30% the test data. 

The sensor signals (accelerometer and gyroscope) were pre-processed by applying noise filters and then sampled in fixed-width sliding windows of 2.56 sec and 50% overlap (128 readings/window). The sensor acceleration signal, which has gravitational and body motion components, was separated using a Butterworth low-pass filter into body acceleration and gravity. The gravitational force is assumed to have only low frequency components, therefore a filter with 0.3 Hz cutoff frequency was used. From each window, a vector of features was obtained by calculating variables from the time and frequency domain. See section Feature Selection for more details. 

## New Dataset

### The File

The data file “tidy_data.txt” contains 1 title row, and 180 data rows about movements for 30 subjects with 6 activities. 

This file begins with a title row to ease reading. The title row containts 3  parts: subeject id, activity name and features. Subsequently, each data row contains a subject id, an activity name and a list measured features. 

### Variable Definition

- "subject"
 - A group of 30 volunteers
 - Volunteers for experiments are numbered with label as “subject” in dataset.
- "Activity_Label"
 - Each person performed six activities:
 - 1 WALKING
 - 2 WALKING_UPSTAIRS
 - 3 WALKING_DOWNSTAIRS
 - 4 SITTING
 - 5 STANDING
 - 6 LAYING
- "AVERAGES for Mean and Standard Deviation regarding Measured Features"
 - "tBodyAcc-mean()-X" 
 - "tBodyAcc-mean()-Y"
 - "tBodyAcc-mean()-Z" 
 - "tBodyAcc-std()-X" 
 - "tBodyAcc-std()-Y" 
 - "tBodyAcc-std()-Z" 
 - "tGravityAcc-mean()-X" 
 - "tGravityAcc-mean()-Y" 
 - "tGravityAcc-mean()-Z" 
 - "tGravityAcc-std()-X" 
 - "tGravityAcc-std()-Y" 
 - "tGravityAcc-std()-Z" 
 - "tBodyAccJerk-mean()-X" 
 - "tBodyAccJerk-mean()-Y" 
 - "tBodyAccJerk-mean()-Z" 
 - "tBodyAccJerk-std()-X"
 - "tBodyAccJerk-std()-Y"
 - "tBodyAccJerk-std()-Z"
 - "tBodyGyro-mean()-X" 
 - "tBodyGyro-mean()-Y" 
 - "tBodyGyro-mean()-Z" 
 - "tBodyGyro-std()-X" 
 - "tBodyGyro-std()-Y" 
 - "tBodyGyro-std()-Z" 
 - "tBodyGyroJerk-mean()-X"
 - "tBodyGyroJerk-mean()-Y"
 - "tBodyGyroJerk-mean()-Z"
 - "tBodyGyroJerk-std()-X"
 - "tBodyGyroJerk-std()-Y"
 - "tBodyGyroJerk-std()-Z"
 - "tBodyAccMag-mean()" 
 - "tBodyAccMag-std()" 
 - "tGravityAccMag-mean()" 
 - "tGravityAccMag-std()" 
 - "tBodyAccJerkMag-mean()" 
 - "tBodyAccJerkMag-std()" 
 - "tBodyGyroMag-mean()" 
 - "tBodyGyroMag-std()" 
 - "tBodyGyroJerkMag-mean()" 
 - "tBodyGyroJerkMag-std()" 
 - "fBodyAcc-mean()-X" 
 - "fBodyAcc-mean()-Y" 
 - "fBodyAcc-mean()-Z" 
 - "fBodyAcc-std()-X" 
 - "fBodyAcc-std()-Y" 
 - "fBodyAcc-std()-Z" 
 - "fBodyAcc-meanFreq()-X" 
 - "fBodyAcc-meanFreq()-Y" 
 - "fBodyAcc-meanFreq()-Z" 
 - "fBodyAccJerk-mean()-X" 
 - "fBodyAccJerk-mean()-Y" 
 - "fBodyAccJerk-mean()-Z" 
 - "fBodyAccJerk-std()-X" 
 - "fBodyAccJerk-std()-Y" 
 - "fBodyAccJerk-std()-Z" 
 - "fBodyAccJerk-meanFreq()-X" 
 - "fBodyAccJerk-meanFreq()-Y" 
 - "fBodyAccJerk-meanFreq()-Z" 
 - "fBodyGyro-mean()-X" 
 - "fBodyGyro-mean()-Y" 
 - "fBodyGyro-mean()-Z" 
 - "fBodyGyro-std()-X" 
 - "fBodyGyro-std()-Y" 
 - "fBodyGyro-std()-Z" 
 - "fBodyGyro-meanFreq()-X" 
 - "fBodyGyro-meanFreq()-Y" 
 - "fBodyGyro-meanFreq()-Z" 
 - "fBodyAccMag-mean()" 
 - "fBodyAccMag-std()" 
 - "fBodyAccMag-meanFreq()" 
 - "fBodyBodyAccJerkMag-mean()" 
 - "fBodyBodyAccJerkMag-std()" 
 - "fBodyBodyAccJerkMag-meanFreq()" 
 - "fBodyBodyGyroMag-mean()" 
 - "fBodyBodyGyroMag-std()" 
 - "fBodyBodyGyroMag-meanFreq()" 
 - "fBodyBodyGyroJerkMag-mean()" 
 - "fBodyBodyGyroJerkMag-std()" 
 - "fBodyBodyGyroJerkMag-meanFreq()"
 - "angle(tBodyAccMean,gravity)" 
 - "angle(tBodyAccJerkMean),gravityMean)" 
 - "angle(tBodyGyroMean,gravityMean)" 
 - "angle(tBodyGyroJerkMean,gravityMean)"
 - "angle(X,gravityMean)" 
 - "angle(Y,gravityMean)" 
 - "angle(Z,gravityMean)"

### Feature Selection 

The features selected for this database come from the accelerometer and gyroscope 3-axial raw signals tAcc-XYZ and tGyro-XYZ. These time domain signals (prefix 't' to denote time) were captured at a constant rate of 50 Hz. Then they were filtered using a median filter and a 3rd order low pass Butterworth filter with a corner frequency of 20 Hz to remove noise. Similarly, the acceleration signal was then separated into body and gravity acceleration signals (tBodyAcc-XYZ and tGravityAcc-XYZ) using another low pass Butterworth filter with a corner frequency of 0.3 Hz. 

Subsequently, the body linear acceleration and angular velocity were derived in time to obtain Jerk signals (tBodyAccJerk-XYZ and tBodyGyroJerk-XYZ). Also the magnitude of these three-dimensional signals were calculated using the Euclidean norm (tBodyAccMag, tGravityAccMag, tBodyAccJerkMag, tBodyGyroMag, tBodyGyroJerkMag). 

Finally a Fast Fourier Transform (FFT) was applied to some of these signals producing fBodyAcc-XYZ, fBodyAccJerk-XYZ, fBodyGyro-XYZ, fBodyAccJerkMag, fBodyGyroMag, fBodyGyroJerkMag. (Note the 'f' to indicate frequency domain signals). 

These signals were used to estimate variables of the feature vector for each pattern:  
'-XYZ' is used to denote 3-axial signals in the X, Y and Z directions.

- tBodyAcc-XYZ
- tGravityAcc-XYZ
- tBodyAccJerk-XYZ
- tBodyGyro-XYZ
- tBodyGyroJerk-XYZ
- tBodyAccMag
- tGravityAccMag
- tBodyAccJerkMag
- tBodyGyroMag
- tBodyGyroJerkMag
- fBodyAcc-XYZ
- fBodyAccJerk-XYZ
- fBodyGyro-XYZ
- fBodyAccMag
- fBodyAccJerkMag
- fBodyGyroMag
- fBodyGyroJerkMag

The set of variables that were estimated from these signals are: 

- mean(): Mean value
- std(): Standard deviation
- mad(): Median absolute deviation 
- max(): Largest value in array
- min(): Smallest value in array
- sma(): Signal magnitude area
- energy(): Energy measure. Sum of the squares divided by the number of values. 
- iqr(): Interquartile range 
- entropy(): Signal entropy
- arCoeff(): Autorregresion coefficients with Burg order equal to 4
- correlation(): correlation coefficient between two signals
- maxInds(): index of the frequency component with largest magnitude
- meanFreq(): Weighted average of the frequency components to obtain a mean frequency
- skewness(): skewness of the frequency domain signal 
- kurtosis(): kurtosis of the frequency domain signal 
- bandsEnergy(): Energy of a frequency interval within the 64 bins of the FFT of each window.
- angle(): Angle between to vectors.

Additional vectors obtained by averaging the signals in a signal window sample. These are used on the angle() variable:

- gravityMean
- tBodyAccMean
- tBodyAccJerkMean
- tBodyGyroMean
- tBodyGyroJerkMean
