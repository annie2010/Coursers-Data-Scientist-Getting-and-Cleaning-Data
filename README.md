# README

## Purpose

This project intends to demonstrate how to collect, work with, and clean a data set. 

The data in this project is about wearable computing. The data is regarding activities from volunteers such as walking, sitting, etc. Their activities are represented by measurements from accelerometers in smartphones. Activity menasurements are done and the data set is available.

The fruit of this project is to create an R script so as to process and compute all activity measurements from the original data set to produce a new, clean and tidy data set. The new data set is about average measurements regarding each voluneteer with each activity. The new data set is captured in an output file called "tidy_data.txt"
 
## List of Files

- 'README.md': This file.
- 'run_anlysis.R': An R script to compute averages of measurements for each volunteer with each activity. Results are stored in file 'tidy_data.txt'
- 'CodeBook.md': Describe the variable names in output file 'tidy_data.txt' 

## How Does 'run_analysis.R' Work

* Input: download and unzip the dataset from 'https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip'
* Compute: run script 'run_analysis.R'
* Output: 'tidy_data.txt'
* Dependencies: library 'data.table', 'reshape2'
* Aalgorithm Details:
** 1.a Obtain training data regarding features, activities and subject
** 1.b Obtain test data regarding features, activities and subject
** 2.a Extract feature measurements on mean and stardard deviation for each measurement
** 2.b Extract feature measurements on mean and stardard deviation for each measurement
** 3.a Use descriptive names for activity data
** 3.b Use descriptive names for activity data
** 4.a Col combine training data set
** 4.b Col combine testing data set
** 4.c Merge test and train data sets
** 5.a Melt data with ids and vars
** 5.b Apply mean function using dcast
** 5.c Write results to a file

## Data Source

* Description, http://archive.ics.uci.edu/ml/datasets/Human+Activity+Recognition+Using+Smartphones
* Dataset, https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip

