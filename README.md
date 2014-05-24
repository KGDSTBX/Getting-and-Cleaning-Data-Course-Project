Getting-and-Cleaning-Data-Course-Project
========================================

Project Assignment

Step 1 

Creating the Training File from 3 files containing data as well as the subject identifiers(Read individual files and then combine using column bind)

- 'train/X_train.txt': Training set.

- 'train/y_train.txt': Training labels.

- 'train/subject_train.txt'



Step 2 

Creating the Test File from 3 files containing data as well as the subject identifiers (Read individual files and then combine using column bind)

- 'test/X_test.txt': Training set.

- 'test/y_test.txt': Training labels.

- 'test/subject_train.txt'

Step 3 

Creating the features vector without hyphens & braces in variable names,since this is required as per the project requirement as well as due to certain characters like "-" giving inconsistent results in statistical data

Read features from the following file

- 'features.txt'

Understand the features from the following file:

- 'features-info.txt'

The features selected for this database come from the accelerometer and gyroscope 3-axial raw signals tAcc-XYZ and tGyro-XYZ. The set of variables that were estimated from these signals include:
mean(): Mean value
std(): Standard deviation
mad(): Median absolute deviation 
max(): Largest value in array
min(): Smallest value in array
sma(): Signal magnitude area

etc....

Using gsub function to remove hypens and braces from variable names


Step4 

Creating a single data file ( use rbind to combine both train and test files and adding column names by vector creadted by reading features file in step 3)




Step 5 

Extracting only the measurements on the mean and standard deviation for each measurement using the 
grepl function, doing subsets in turns for mean and std and then merging through cbind. In the First 2 columns inserted the subject and activity columns

Step 6 

Use descriptive activity names to name the activities in the data set and Appropriately labels the data set with descriptive activity names. The index was obtained from reading file as below and using lookup function( library qdapTools)


- 'activity_lables.txt'



Step 7 

Create a second, independent tidy data set with the average of each variable for each activity and each subject by means of grouping by ( subject,activity) using aggregate function and then writing data to an ## xls file. This is saved as a pdf and uploaded. 

As can be seen from the output we have activity-wise means for all variables for each subject.



