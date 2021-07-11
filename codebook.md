# Introduction

This codebook describes the variables in step_5_data_set.csv, and the transformations I performed to clean up the data.

# Transformations

After downloading and unzipping the files I have extracted the features from the corresponding text file. The features are the column names of the "x_train" and "x_test" datasets. I have loaded the "x_train" and "x_test" and given the columns the appropriate names. Afterwards removed all but the standard deviation and mean collumns. After this I have loaded the activity and subject datasets and combined it with the correct "x_" dataset. Thereafer I changed the values of the activities from numbers to the correct names, and combined the train and test dataset. The resulting dataset I saved. Finally I made a new dataset where I took  the average of each variable for each activity and each subject and saved the results.
All transformations was done using the packages from tidyverse.


# Variables in step_5_data_set.csv

"subject" - the subject who took part in the study

"activity" - what activity the subject did when the measurement was taken

The following variables are all in the dataset, but is explained in the following chapter.

"fBodyAcc-mean()-X"

"fBodyAcc-mean()-Y"

"fBodyAcc-mean()-Z"

"fBodyAcc-std()-X"

"fBodyAcc-std()-Y"

"fBodyAcc-std()-Z"

"fBodyAccJerk-mean()-X"

"fBodyAccJerk-mean()-Y"

"fBodyAccJerk-mean()-Z"

"fBodyAccJerk-std()-X"

"fBodyAccJerk-std()-Y"

"fBodyAccJerk-std()-Z"

"fBodyAccMag-mean()"

"fBodyAccMag-std()"

"fBodyBodyAccJerkMag-mean()"

"fBodyBodyAccJerkMag-std()"

"fBodyBodyGyroJerkMag-mean()"

"fBodyBodyGyroJerkMag-std()"

"fBodyBodyGyroMag-mean()"

"fBodyBodyGyroMag-std()"

"fBodyGyro-mean()-X"

"fBodyGyro-mean()-Y"

"fBodyGyro-mean()-Z"

"fBodyGyro-std()-X"

"fBodyGyro-std()-Y"

"fBodyGyro-std()-Z"

"tBodyAcc-mean()-X"

"tBodyAcc-mean()-Y"

"tBodyAcc-mean()-Z"

"tBodyAcc-std()-X"

"tBodyAcc-std()-Y"

"tBodyAcc-std()-Z"

"tBodyAccJerk-mean()-X"

"tBodyAccJerk-mean()-Y"

"tBodyAccJerk-mean()-Z"

"tBodyAccJerk-std()-X"

"tBodyAccJerk-std()-Y"

"tBodyAccJerk-std()-Z"

"tBodyAccJerkMag-mean()"

"tBodyAccJerkMag-std()"

"tBodyAccMag-mean()"

"tBodyAccMag-std()"

"tBodyGyro-mean()-X"

"tBodyGyro-mean()-Y"

"tBodyGyro-mean()-Z"

"tBodyGyro-std()-X"

"tBodyGyro-std()-Y"

"tBodyGyro-std()-Z"

"tBodyGyroJerk-mean()-X"

"tBodyGyroJerk-mean()-Y"

"tBodyGyroJerk-mean()-Z"

"tBodyGyroJerk-std()-X"

"tBodyGyroJerk-std()-Y"

"tBodyGyroJerk-std()-Z"

"tBodyGyroJerkMag-mean()"

"tBodyGyroJerkMag-std()"

"tBodyGyroMag-mean()"

"tBodyGyroMag-std()"

"tGravityAcc-mean()-X"

"tGravityAcc-mean()-Y"

"tGravityAcc-mean()-Z"

"tGravityAcc-std()-X"

"tGravityAcc-std()-Y"

"tGravityAcc-std()-Z"

"tGravityAccMag-mean()"

"tGravityAccMag-std()"

# the measurement columns

The following text is copied from the "features_info" textfile in the downloaded data. I have edited so there only is the paragraphs which is relevant to understand the vairables in the prior chapter.



The features selected for this database come from the accelerometer and gyroscope 3-axial raw signals tAcc-XYZ and tGyro-XYZ. These time domain signals (prefix 't' to denote time) were captured at a constant rate of 50 Hz. Then they were filtered using a median filter and a 3rd order low pass Butterworth filter with a corner frequency of 20 Hz to remove noise. Similarly, the acceleration signal was then separated into body and gravity acceleration signals (tBodyAcc-XYZ and tGravityAcc-XYZ) using another low pass Butterworth filter with a corner frequency of 0.3 Hz. 

Subsequently, the body linear acceleration and angular velocity were derived in time to obtain Jerk signals (tBodyAccJerk-XYZ and tBodyGyroJerk-XYZ). Also the magnitude of these three-dimensional signals were calculated using the Euclidean norm (tBodyAccMag, tGravityAccMag, tBodyAccJerkMag, tBodyGyroMag, tBodyGyroJerkMag). 

Finally a Fast Fourier Transform (FFT) was applied to some of these signals producing fBodyAcc-XYZ, fBodyAccJerk-XYZ, fBodyGyro-XYZ, fBodyAccJerkMag, fBodyGyroMag, fBodyGyroJerkMag. (Note the 'f' to indicate frequency domain signals). 

These signals were used to estimate variables of the feature vector for each pattern:  
'-XYZ' is used to denote 3-axial signals in the X, Y and Z directions.

tBodyAcc-XYZ

tGravityAcc-XYZ

tBodyAccJerk-XYZ

tBodyGyro-XYZ

tBodyGyroJerk-XYZ

tBodyAccMag

tGravityAccMag

tBodyAccJerkMag

tBodyGyroMag

tBodyGyroJerkMag

fBodyAcc-XYZ

fBodyAccJerk-XYZ

fBodyGyro-XYZ

fBodyAccMag

fBodyAccJerkMag

fBodyGyroMag

fBodyGyroJerkMag

The set of variables that were estimated from these signals are: 


mean(): Mean value

std(): Standard deviation
