# Getting-and-CleaningData

Project description

This project contanins the transformation script run_analysis.r. This script transforms serveral data sets into a tidy data set. 
The original dataset is described here; 
http://archive.ics.uci.edu/ml/datasets/Human+Activity+Recognition+Using+Smartphones

The datafiles are stored here;
https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip 

The transformation consists of;
- adding the Subject
- adding the Activity
- merging the two data sets
- extract the average and the standard deviation measurements
- change the labels to a readible format
- group data on Subject and Activity and calculate the average of all columns
- write data to a file. 

Codebook
"Subject" - integer ID for the subject
"Activity" - char describing the activity
"Body.Acceleration.Average.Y" - average of average for Body.Acceleration Y
"Body.Acceleration.Average.Z" - average of average for Body.Acceleration Z
"Body.Acceleration.Standard.Deviation.X" - average of std deviation for Body.Acceleration Z
"Body.Acceleration.Standard.Deviation.Y" - etc. the measures below follow the same convention. Al the measures are in decimals. 
"Body.Acceleration.Standard.Deviation.Z"
"Gravity.Acceleration.Average.X"
"Gravity.Acceleration.Average.Y"
"Gravity.Acceleration.Average.Z"
"Gravity.Acceleration.Standard.Deviation.X"
"Gravity.Acceleration.Standard.Deviation.Y"
"Gravity.Acceleration.Standard.Deviation.Z"
"Body.Acceleration.Jerk.Average.X"
"Body.Acceleration.Jerk.Average.Y"
"Body.Acceleration.Jerk.Average.Z"
"Body.Acceleration.Jerk.Standard.Deviation.X"
"Body.Acceleration.Jerk.Standard.Deviation.Y"
"Body.Acceleration.Jerk.Standard.Deviation.Z"
"Body.Gyroscope.Average.X"
"Body.Gyroscope.Average.Y"
"Body.Gyroscope.Average.Z"
"Body.Gyroscope.Standard.Deviation.X"
"Body.Gyroscope.Standard.Deviation.Y"
"Body.Gyroscope.Standard.Deviation.Z"
"Body.GyroscopeJerk.Average.X"
"Body.GyroscopeJerk.Average.Y"
"Body.GyroscopeJerk.Average.Z"
"Body.GyroscopeJerk.Standard.Deviation.X"
"Body.GyroscopeJerk.Standard.Deviation.Y"
"Body.GyroscopeJerk.Standard.Deviation.Z"
"Body.Acceleration.Magnatude.Average"
"Body.Acceleration.Magnatude.Standard.Deviation"
"Gravity.Acceleration.Magnatude.Average"
"Gravity.Acceleration.Magnatude.Standard.Deviation"
"Body.Acceleration.Jerk.Magnatude.Average"
"Body.Acceleration.Jerk.Magnatude.Standard.Deviation"
"Body.Gyroscope.Magnatude.Average"
"Body.Gyroscope.Magnatude.Standard.Deviation"
"Body.GyroscopeJerk.Magnatude.Average"
"Body.GyroscopeJerk.Magnatude.Standard.Deviation"
"Body.Acceleration.Average.X"
"Body.Acceleration.Average.Y.1"
"Body.Acceleration.Average.Z.1"
"Body.Acceleration.Standard.Deviation.X.1"
"Body.Acceleration.Standard.Deviation.Y.1"
"Body.Acceleration.Standard.Deviation.Z.1"
"Body.Acceleration.Jerk.Average.X.1"
"Body.Acceleration.Jerk.Average.Y.1"
"Body.Acceleration.Jerk.Average.Z.1"
"Body.Acceleration.Jerk.Standard.Deviation.X.1"
"Body.Acceleration.Jerk.Standard.Deviation.Y.1"
"Body.Acceleration.Jerk.Standard.Deviation.Z.1"
"Body.Gyroscope.Average.X.1"
"Body.Gyroscope.Average.Y.1"
"Body.Gyroscope.Average.Z.1"
"Body.Gyroscope.Standard.Deviation.X.1"
"Body.Gyroscope.Standard.Deviation.Y.1"
"Body.Gyroscope.Standard.Deviation.Z.1"
"Body.Acceleration.Magnatude.Average.1"
"Body.Acceleration.Magnatude.Standard.Deviation.1"
"Body.Body.Acceleration.Jerk.Magnatude.Average"
"Body.Body.Acceleration.Jerk.Magnatude.Standard.Deviation"
"Body.Body.Gyroscope.Magnatude.Average"
"Body.Body.Gyroscope.Magnatude.Standard.Deviation"
"Body.Body.GyroscopeJerk.Magnatude.Average"
"Body.Body.GyroscopeJerk.Magnatude.Standard.Deviation"








