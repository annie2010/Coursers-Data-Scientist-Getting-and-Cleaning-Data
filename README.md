# README

## 1. Intro

### 1.1 Purpose

This project intends to demonstrate how to collect, work with, and clean a dataset. 

The data in this project is about wearable computing. The data is regarding activities from volunteers such as walking, sitting, etc. Their activities are represented by measurements from accelerometers and gyroscopes in smartphones. These measurements are avialable from the original dataset.

The fruit of this project is to create an R script so as to process and compute all activity measurements from the original dataset to produce a tidy, new dataset. The new dataset averages mean and std measurements regarding each voluneteer with each activity. The new dataset is captured in an output file called "tidy_data.txt"

### 1.2 List of Files

- 'README.md': This file.
- 'run_anlysis.R': An R script to compute averages of measurements for each volunteer with each activity. Results are stored in file 'tidy_data.txt'
- 'CodeBook.md': Describe the variable names in output file 'tidy_data.txt' 

### 1.3 Description about the script

- Merges the train and the test sets to create one data set.
- Extracts only the measurements on the mean and standard deviation for each measurement. 
- Uses descriptive activity names to name the activities in the data set
- Appropriately labels the data set with descriptive variable names. 
- Creates a second, independent tidy data set with the average of each variable for each activity and each subject. 

## 2. What did the analysis files do?

### 2.1 Original Dataset

* Description, http://archive.ics.uci.edu/ml/datasets/Human+Activity+Recognition+Using+Smartphones
* Dataset, https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip
 * Check the README.txt file for further details about this dataset.
 
### 2.2 How to run the script

* Input: download the dataset from 'https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip' and unzip it
* Compute: run script 'run_analysis.R'
* Output: 'tidy_data.txt', variables are described in 'CodeBook.md'
* Dependencies: library 'data.table', 'reshape2'

### 2.3 Analysis Detail

* Prep
 * Include library 'data.table' amd 'reshape2'
 * Load labels for activities
 * Load labels for feature measurements and extract labels for mean and standard deviation in feature measurements 
* Load data regarding features, activities and subjects
 * Load train data regarding features, activities and subjects
 * Load test data regarding features, activities and subjects
* Extract feature measurements on mean and stardard deviation for each measurement
 * Extract feature measurements on mean and stardard deviation for each measurement in train data
 * Extract feature measurements on mean and stardard deviation for each measurement in test data
* Use descriptive names for activity data
 * Use descriptive names for activity data in train data
 * Use descriptive names for activity data in test data
* Combine columns in each data set and merge train data with test data
 * Combine columns in train data set for features, activities and subjects
 * Combine columns in test data set for features, activities and subjects
 * Merge test and train data sets
* Compute means of extracted features for results per subject per activity
 * Melt data with ids (with subject and activity) and vars (with extracted features)
 * Apply mean function using dcast per subject per activity
 * Write results to a file called "tidy_data.txt"
