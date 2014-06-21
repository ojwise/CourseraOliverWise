CourseraOliverWise
==================
@@ -1,13 +0,0 @@
The R script, "run_analysis.R" included in this repo reads and manipulates the "Human Activity
 Recognition Using Smartphones Dataset" available at this 
link: https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip. 
The script prints a tidy data frame where all but the first variable (column) refers to the mean
and standard deviation calculation of a variety of measurements taken while 30 subjects engaged
in six different activities: walking, walking upstairs, walking downstairs, sitting, standing, and laying.
The first variable (column), titled "subject or activity type" refers to each of the 30 subjects,
(list subject 1 through subject 30) followed by the 6 activity types. The values of the cells
measures the mean value across well over 10,000 observations for that measurement type.

In order for the script to write, the dataset must already be located in the working directory
and must be labeled "UCI HAR Dataset." The data also utilizes the "plyr" package, which must
be downloaded. The reading of the data takes a little while, so be patient.

