# README

## Purpose

This project intends to demonstrate how to collect, work with, and clean a data set. 

The data in this project is about wearable computing. The data is regarding activities from volunteers such as walking, sitting, etc. Their activities are represented by measurements from accelerometers in smartphones. Activity menasurements are done and the data set is available.

The fruit of this project is to create an R script so as to process and compute all activity measurements from the original data set to produce a new, clean and tidy data set. The new data set is about average measurements regarding each voluneteer with each activity. The new data set is captured in an output file called "tidy_data.txt"

## Data Source

* Description, http://archive.ics.uci.edu/ml/datasets/Human+Activity+Recognition+Using+Smartphones
* Dataset, https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip
 * Check the README.txt file for further details about this dataset.
 
## List of Files

- 'README.md': This file.
- 'run_anlysis.R': An R script to compute averages of measurements for each volunteer with each activity. Results are stored in file 'tidy_data.txt'
- 'CodeBook.md': Describe the variable names in output file 'tidy_data.txt' 

## Description about the script

- Merges the train and the test sets to create one data set.
- Extracts only the measurements on the mean and standard deviation for each measurement. 
- Uses descriptive activity names to name the activities in the data set
- Appropriately labels the data set with descriptive variable names. 
- Creates a second, independent tidy data set with the average of each variable for each activity and each subject. 

## How to run the script

* Input: download and unzip the dataset from 'https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip'
* Compute: run script 'run_analysis.R'
* Output: 'tidy_data.txt', variables are described by 'CodeBook.md'
* Dependencies: library 'data.table', 'reshape2'

## Algorithm in the script

* Prep
 * Read labels for activities
 * Read labels for feature measurements and extract labels for mean and standard deviation in feature measurements 
* Obtain data regarding features, activities and subject
 * Obtain train data regarding features, activities and subject
 * Obtain test data regarding features, activities and subject
* Extract feature measurements on mean and stardard deviation for each measurement
 * Extract feature measurements on mean and stardard deviation for each measurement in train data
 * Extract feature measurements on mean and stardard deviation for each measurement in test data
* Use descriptive names for activity data
 * Use descriptive names for activity data in train data
 * Use descriptive names for activity data in test data
* Combine Columns in each data set and merge train data with test data
 * Combine columns in train data set for features, activities and subjects
 * Combine columns in testing data set for features, activities and subjects
 * Merge test and train data sets
* Compute means for results
 * Melt data with ids and vars
 * Apply mean function using dcast
 * Write results to a file
