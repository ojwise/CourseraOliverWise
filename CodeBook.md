@@ -1,53 +0,0 @@



The features selected for this database come from the accelerometer and gyroscope 3-axial raw signals tAcc-XYZ and tGyro-XYZ.
 These time domain signals (prefix 't' to denote time) were captured at a constant rate of 50 Hz. 
Then they were filtered using a median filter and a 3rd order low pass Butterworth filter with a corner frequency of 20 Hz to remove noise. 
Similarly, the acceleration signal was then separated into body and gravity acceleration signals (tBodyAcc-XYZ and tGravityAcc-XYZ) using another 
low pass Butterworth filter with a corner frequency of 0.3 Hz. 

Subsequently, the body linear acceleration and angular velocity were derived in time to obtain Jerk signals (tBodyAccJerk-XYZ and tBodyGyroJerk-XYZ). 
Also the magnitude of these three-dimensional signals were calculated using the Euclidean norm (tBodyAccMag, tGravityAccMag, tBodyAccJerkMag, tBodyGyroMag, 
tBodyGyroJerkMag). 

Finally a Fast Fourier Transform (FFT) was applied to some of these signals producing fBodyAcc-XYZ, fBodyAccJerk-XYZ, fBodyGyro-XYZ, fBodyAccJerkMag,
 fBodyGyroMag, fBodyGyroJerkMag. (Note the 'f' to indicate frequency domain signals). 

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

While a large number of different calculations are available for each of the above variables, the script "run_analysis.R" subsets for only those variables of the
mean and standard deviation for each calculation.

The first column, "subject and activity type" refer to each of the 30 subjects (listed subject 1 through subject 30) as well as each of the six activity types,
walking, walking upstairs, walking downstairs, sitting, standing, and laying.

The script takes the following approach:
1. All relevant txt files are read into data frames.
2. The training and test data are combined in one data frame
3. The subject data for the training and test data are combined and added to the data frame.
4. The observation data for the training and test data are combined and added to the data frame. The variables are transformed from integers 1-6 to the descriptive
attributes for each of the 6 activity types.
5. The variable names are changed from integers to descriptive labels.
6. The data frame is reshaped so that the first column refers to each of the 30 subjects and six activity types. The remaining variables refer to the
mean and standard deviation measurements of each of the variables listed above. The values in the cells refer to mean of all of the variables for that subject or
activity type.

