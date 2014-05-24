Getting-and-Cleaning-Data-Course-Project
========================================

Project Assignment

Step 1 

Creating the Training File from 3 files containing data as well as the subject identifiers(column bind)

- 'train/X_train.txt': Training set.

- 'train/y_train.txt': Training labels.

- 'train/subject_train.txt'



Step 2 

Creating the Test File from 3 files containing data as well as the subject identifiers (column bind)

- 'test/X_test.txt': Training set.

- 'test/y_test.txt': Training labels.

- 'test/subject_train.txt'

Step 3 

Creating the features vector without hyphens & braces in variable names,since this is required as per the project requirement as well as due to certain characters like "-" giving inconsistent results in statistical data

The features selected for this database come from the accelerometer and gyroscope 3-axial raw signals tAcc-XYZ and tGyro-XYZ. The set of variables that were estimated from these signals include:
mean(): Mean value
std(): Standard deviation
mad(): Median absolute deviation 
max(): Largest value in array
min(): Smallest value in array
sma(): Signal magnitude area

etc....


Step4 

Creating a single data file with variable names from feature list and adding a column for activity name

- 'activity_lables.txt'


Step 5 

Extracting only the measurements on the mean and standard deviation for each measurement using the 
grepl function, doing subsets in turns and then merging through cbind. In the First 2 columns inserted the subject and activity columns



Step 6 

Use descriptive activity names to name the activities in the data set and Appropriately labels the data set with descriptive activity names. The index was ontained from reading file as described in step 4.


Step 7 

Create a second, independent tidy data set with the average of each variable for each activity and each subject by means of grouping and then writing data to an ## xls file. This is saved as a pdf and uploaded. 

As can be seen from the output we have activity-wise means for all variables for each subject.



