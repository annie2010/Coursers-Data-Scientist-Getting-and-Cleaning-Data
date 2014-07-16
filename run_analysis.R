###################################################################
# Project - Submission and Evaluation:
#
# A) Please upload a tidy data set according to the instructions in the project description.
# 
# B) Please submit a link to a Github repo with the code for performing your analysis.
# 
# 1) Script
# 2) Codebook
# 3) README
# 
# C) Overall feedback
# 
###################################################################


###################################################################
# Data Scientist - Tidy Data
#
# You should create one R script called run_analysis.R that does the following. 
# 1. Merges the training and the test sets to create one data set.
# 2. Extracts only the measurements on the mean and standard deviation for each measurement. 
# 3. Uses descriptive activity names to name the activities in the data set
# 4. Appropriately labels the data set with descriptive variable names. 
# 5. Creates a second, independent tidy data set with the average of each variable for each activity and each subject. 
# 
###################################################################

cat("The project begins ..\n")

library(data.table)
library(reshape2)

###################################################################
# 0. Prep - README
###################################################################
#
# per 'README.txt'
#
# 'features.txt': List of all features.
# 'activity_labels.txt': Links the class labels with their activity name.
# 'feature_info.txt':
#   The features selected for this database come from the accelerometer and gyroscope 3-axial raw signals tAcc-XYZ and tGyro-XYZ. 
#   These time domain signals (prefix 't' to denote time) were captured at a constant rate of 50 Hz.
#   Finally a Fast Fourier Transform (FFT) was applied to some of these signals producing fBodyAcc-XYZ, ... (Note the 'f' to indicate frequency domain signals).
#
###################################################################

activity_labels <- read.table("./UCI HAR Dataset/activity_labels.txt")[,2]
#1 WALKING
#2 WALKING_UPSTAIRS
#3 WALKING_DOWNSTAIRS
#4 SITTING
#5 STANDING
#6 LAYING

features <- read.table("./UCI HAR Dataset/features.txt")[,2]
#1 tBodyAcc-mean()-X
#2 tBodyAcc-mean()-Y
#3 tBodyAcc-mean()-Z
#4 tBodyAcc-std()-X
#5 tBodyAcc-std()-Y
#6 tBodyAcc-std()-Z
#...
#559 angle(X,gravityMean)
#560 angle(Y,gravityMean)
#561 angle(Z,gravityMean)
#head(features)

# Extracts only the measurements on the mean and standard deviation for each measurement
mean_std_features <- grepl("mean|std", features, ignore.case = TRUE)
#head(mean_std_features)

###################################################################
# 1.Merges the training and the test sets to create one data set.
###################################################################
#
# per 'README.txt'
#
# - 'train/X_train.txt': Training set.
# - 'train/y_train.txt': Training labels.
# - 'train/subject_train.txt': Each row identifies the subject who performed the activity for each window sample. Its range is from 1 to 30. 
#
# - 'test/X_test.txt': Test set.
# - 'test/y_test.txt': Test labels.
#
###################################################################

# 1.a Obtains the training data and labels
cat("\n1.a Obtain training data regarding features, activities and subject\n")
train_feature_data    = read.table("./UCI HAR Dataset/train/X_train.txt") # per features
train_activity_data   = read.table("./UCI HAR Dataset/train/y_train.txt") # activity_labels for train data set
train_subject_data    = read.table("./UCI HAR Dataset/train/subject_train.txt")

# 1.b Obtains the test data and labels
cat("\n1.b Obtain test data regarding features, activities and subject\n")
test_feature_data  = read.table("./UCI HAR Dataset/test/X_test.txt") # per features
test_activity_data = read.table("./UCI HAR Dataset/test/y_test.txt") # activity_labels for test data set
test_subject_data  = read.table("./UCI HAR Dataset/test/subject_test.txt")

###################################################################
# 2. Extracts only the measurements on the mean and standard deviation for each measurement. 
###################################################################
cat("\n2.a Extract feature measurements on mean and stardard deviation for each measurement\n")
names(train_feature_data) = features
train_feature_data        = train_feature_data[,mean_std_features]
#head(train_feature_data)[1]

cat("\n2.b Extract feature measurements on mean and stardard deviation for each measurement\n")
names(test_feature_data) = features
test_feature_data        = test_feature_data[,mean_std_features]
#head(test_feature_data)[1]

###################################################################
# 3. Uses descriptive activity names to name the activities in the data set
###################################################################
cat("\n3.a Use descriptive names for activity data\n")
train_activity_data[,2]      = activity_labels[train_activity_data[,1]]
names(train_activity_data)   = c("Activity_ID", "Activity_Label")
names(train_subject_data)    = "subject"

cat("\n3.b Use descriptive names for activity data\n")
test_activity_data[,2]      = activity_labels[test_activity_data[,1]]
names(test_activity_data)   = c("Activity_ID", "Activity_Label")
names(test_subject_data)    = "subject"

###################################################################
# 4. Appropriately labels the data set with descriptive variable names. 
###################################################################
cat("\n4.a Col combine training data set\n")
train_data = cbind(as.data.table(train_subject_data), train_activity_data, train_feature_data)
#head(train_data)[1]

cat("\n4.b Col combine testing data set\n")
test_data = cbind(as.data.table(test_subject_data), test_activity_data, test_feature_data)
#head(test_set)[1]

cat("\n4.c Merge test and train data sets\n")
data = rbind(test_data, train_data)
#head(data)[1]

###################################################################
# 5. Creates a second, independent tidy data set with the average of each variable for each activity and each subject. 
###################################################################
cat("\n5.a Melt data with ids and vars\n")
id_labels   = c("subject", "Activity_ID", "Activity_Label")
measure_labels = setdiff(colnames(data), id_labels)
melt_data   = melt(data, id = id_labels, measure.vars = measure_labels)

cat("\n5.b Apply mean function using dcast\n")
tidy_data   = dcast(melt_data, subject + Activity_Label ~ variable, mean)

cat("\n5.c Write results to a file\n")
write.table(tidy_data, file = "./tidy_data.txt")

cat("\nThe project completed successfully!!\n")
