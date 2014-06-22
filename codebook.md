#CODEBOOK

##Files in the data

* 'README.txt'

* 'features_info.txt': Shows information about the variables used on the feature vector.


* 'features.txt': List of all features

* 'activity_labels.txt': Links the class labels with their activity name.

* 'train/X_train.txt': Training set.

* 'train/y_train.txt': Training labels.

* 'test/X_test.txt': Test set.

* 'test/y_test.txt': Test labels.

The following files are available for the train and test data. Their descriptions are equivalent. 

* 'train/subject_train.txt': Each row identifies the subject who performed the activity for each window sample. Its range is from 1 to 30. 

* 'train/Inertial Signals/total_acc_x_train.txt': The acceleration signal from the smartphone accelerometer X axis in standard gravity units 'g'. Every row shows a 128 element vector. The same description applies for the 'total_acc_x_train.txt' and 'total_acc_z_train.txt' files for the Y and Z axis. 

* 'train/Inertial Signals/body_acc_x_train.txt': The body acceleration signal obtained by subtracting the gravity from the total acceleration. 

* 'train/Inertial Signals/body_gyro_x_train.txt': The angular velocity vector measured by the gyroscope for each window sample. The units are radians/second. 


## The set of variables that were estimated from  signals are: 

* mean(): Mean value
* std(): Standard deviation
* mad(): Median absolute deviation 
* max(): Largest value in array
* min(): Smallest value in array
* sma(): Signal magnitude area
* energy(): Energy measure. Sum of the squares divided by the number of values. 
* iqr(): Interquartile range 
* entropy(): Signal entropy
* arCoeff(): Autorregresion coefficients with Burg order equal to 4
* correlation(): correlation coefficient between two signals
* maxInds(): index of the frequency component with largest magnitude
* meanFreq(): Weighted average of the frequency components to obtain a mean frequency
* skewness(): skewness of the frequency domain signal 
* kurtosis(): kurtosis of the frequency domain signal 
* bandsEnergy(): Energy of a frequency interval within the 64 bins of the FFT of each window.
* angle(): Angle between to vectors.


## Extract mean and standard deviation features 

For this, a pattern "subjectid|activityid|mean|std" was created
Whenever this pattern is encountered , those values of rawdata are written onto a new data namely, tidyData




 ## Variables used in tidy data and the given raw data - features
 
 To improve the readability of the raw data, the feature vectors were given descriptive and more explanatory names
 gsub command was used to replace particular occurances of names in column with more readable forms
 
|						TIDY DATA COLUMN NAMES                    |               RAW DATA COLUMN NAMES       |
|-----------------------------------------------------------------|-------------------------------------------|
|                                                  subjectid      |                subjectid		          |		    
|                                                   activity      |                 activity				  |  
|                 timedomain Acceleration of Body Mean-Xaxis      |        tBodyAcc-mean()-X                  |
|                 timedomain Acceleration of Body Mean-Yaxis      |       tBodyAcc-mean()-Y                   |
|                 timedomain Acceleration of Body Mean-Zaxis      |        tBodyAcc-mean()-Z                  |
|              timedomain Acceleration of Body -StdDev-Xaxis      |         tBodyAcc-std()-X                  | 
|              timedomain Acceleration of Body -StdDev-Yaxis      |         tBodyAcc-std()-Y                  |
|              timedomain Acceleration of Body -StdDev-Zaxis      |         tBodyAcc-std()-Z                  |
|              timedomain Acceleration of Gravity Mean-Xaxis      |     tGravityAcc-mean()-X                  |
|             timedomain Acceleration of Gravity Mean-Yaxis       |     tGravityAcc-mean()-Y                  | 
|             timedomain Acceleration of Gravity Mean-Zaxis       |     tGravityAcc-mean()-Z                  |
|          timedomain Acceleration of Gravity -StdDev-Xaxis       |      tGravityAcc-std()-X                  |
|          timedomain Acceleration of Gravity -StdDev-Yaxis       |      tGravityAcc-std()-Y                  |
|          timedomain Acceleration of Gravity -StdDev-Zaxis       |      tGravityAcc-std()-Z                  |
|            timedomain Acceleration of Body JerkMean-Xaxis       |    tBodyAccJerk-mean()-X                  |
|            timedomain Acceleration of Body JerkMean-Yaxis       |    tBodyAccJerk-mean()-Y                  |
|            timedomain Acceleration of Body JerkMean-Zaxis       |    tBodyAccJerk-mean()-Z                  |
|         timedomain Acceleration of Body Jerk-StdDev-Xaxis       |     tBodyAccJerk-std()-X                  |
|         timedomain Acceleration of Body Jerk-StdDev-Yaxis       |     tBodyAccJerk-std()-Y                  |
|         timedomain Acceleration of Body Jerk-StdDev-Zaxis       |     tBodyAccJerk-std()-Z                  |
|                             timedomain BodyGyroMean-Xaxis       |       tBodyGyro-mean()-X                  |
|                             timedomain BodyGyroMean-Yaxis       |       tBodyGyro-mean()-Y                  |
|                             timedomain BodyGyroMean-Zaxis       |       tBodyGyro-mean()-Z                  |
|                          timedomain BodyGyro-StdDev-Xaxis       |        tBodyGyro-std()-X                  |
|                          timedomain BodyGyro-StdDev-Yaxis       |        tBodyGyro-std()-Y                  |
|                          timedomain BodyGyro-StdDev-Zaxis       |        tBodyGyro-std()-Z                  |
|                         timedomain BodyGyroJerkMean-Xaxis       |   tBodyGyroJerk-mean()-X                  |
|                         timedomain BodyGyroJerkMean-Yaxis       |   tBodyGyroJerk-mean()-Y                  |
|                         timedomain BodyGyroJerkMean-Zaxis       |   tBodyGyroJerk-mean()-Z                  |
|                      timedomain BodyGyroJerk-StdDev-Xaxis       |    tBodyGyroJerk-std()-X                  |
|                      timedomain BodyGyroJerk-StdDev-Yaxis       |    tBodyGyroJerk-std()-Y                  |
|                      timedomain BodyGyroJerk-StdDev-Zaxis       |    tBodyGyroJerk-std()-Z                  |
|             timedomain Acceleration of Body MagnitudeMean       |       tBodyAccMag-mean()                  |
|          timedomain Acceleration of Body Magnitude-StdDev       |        tBodyAccMag-std()                  |
|          timedomain Acceleration of Gravity MagnitudeMean       |    tGravityAccMag-mean()                  |
|       timedomain Acceleration of Gravity Magnitude-StdDev       |     tGravityAccMag-std()                  |
|         timedomain Acceleration of Body JerkMagnitudeMean       |   tBodyAccJerkMag-mean()                  |
|      timedomain Acceleration of Body JerkMagnitude-StdDev       |    tBodyAccJerkMag-std()                  |
|                          timedomain BodyGyroMagnitudeMean       |      tBodyGyroMag-mean()                  |
|                       timedomain BodyGyroMagnitude-StdDev       |       tBodyGyroMag-std()                  |
|                    timedomain BodyGyroJerkMagnitudeMean       |  tBodyGyroJerkMag-mean()                    |
|                   timedomain BodyGyroJerkMagnitude-StdDev       |   tBodyGyroJerkMag-std()                  |
|                freqdomain Acceleration of Body Mean-Xaxis       |        fBodyAcc-mean()-X                  |
|                freqdomain Acceleration of Body Mean-Yaxis       |        fBodyAcc-mean()-Y                  |
|                freqdomain Acceleration of Body Mean-Zaxis       |        fBodyAcc-mean()-Z                  |
|             freqdomain Acceleration of Body -StdDev-Xaxis       |         fBodyAcc-std()-X                  |
|             freqdomain Acceleration of Body -StdDev-Yaxis       |         fBodyAcc-std()-Y                  |
|             freqdomain Acceleration of Body -StdDev-Zaxis       |         fBodyAcc-std()-Z                  |                  
|            freqdomain Acceleration of Body MeanFreq-Xaxis       |    fBodyAcc-meanFreq()-X                  |
|            freqdomain Acceleration of Body MeanFreq-Yaxis       |    fBodyAcc-meanFreq()-Y                  |
|            freqdomain Acceleration of Body MeanFreq-Zaxis       |    fBodyAcc-meanFreq()-Z                  |
|            freqdomain Acceleration of Body JerkMean-Xaxis       |    fBodyAccJerk-mean()-X                  |
|            freqdomain Acceleration of Body JerkMean-Yaxis       |    fBodyAccJerk-mean()-Y                  |
|            freqdomain Acceleration of Body JerkMean-Zaxis       |    fBodyAccJerk-mean()-Z                  |
|         freqdomain Acceleration of Body Jerk-StdDev-Xaxis       |     fBodyAccJerk-std()-X                  |
|         freqdomain Acceleration of Body Jerk-StdDev-Yaxis       |     fBodyAccJerk-std()-Y                  |
|         freqdomain Acceleration of Body Jerk-StdDev-Zaxis       |  fBodyAccJerk-std()-Z                     |
|        freqdomain Acceleration of Body JerkMeanFreq-Xaxis       |  fBodyAccJerk-meanFreq()-X                |
|        freqdomain Acceleration of Body JerkMeanFreq-Yaxis       |   fBodyAccJerk-meanFreq()-Y               |
|        freqdomain Acceleration of Body JerkMeanFreq-Zaxis       |    fBodyAccJerk-meanFreq()-Z              |
|                             freqdomain BodyGyroMean-Xaxis       |       fBodyGyro-mean()-X                  |
|                             freqdomain BodyGyroMean-Yaxis       |       fBodyGyro-mean()-Y                  |
|                             freqdomain BodyGyroMean-Zaxis       |       fBodyGyro-mean()-Z                  |
|                          freqdomain BodyGyro-StdDev-Xaxis       |        fBodyGyro-std()-X                  |
|                          freqdomain BodyGyro-StdDev-Yaxis       |        fBodyGyro-std()-Y                  |
|                          freqdomain BodyGyro-StdDev-Zaxis       |        fBodyGyro-std()-Z                  |
|                         freqdomain BodyGyroMeanFreq-Xaxis       |   fBodyGyro-meanFreq()-X                  |
|                         freqdomain BodyGyroMeanFreq-Yaxis       |   fBodyGyro-meanFreq()-Y                  |
|                         freqdomain BodyGyroMeanFreq-Zaxis       |   fBodyGyro-meanFreq()-Z                  |
|             freqdomain Acceleration of Body MagnitudeMean       |       fBodyAccMag-mean()                  |
|          freqdomain Acceleration of Body Magnitude-StdDev       |        fBodyAccMag-std()                  |
|         freqdomain Acceleration of Body MagnitudeMeanFreq       |   fBodyAccMag-meanFreq()                  |
|     freqdomain BodyAcceleration of Body JerkMagnitudeMean       |  fBodyBodyAccJerkMag-mean()               |
|  freqdomain BodyAcceleration of Body JerkMagnitude-StdDev       |fBodyBodyAccJerkMag-std()                  |
| freqdomain BodyAcceleration of Body JerkMagnitudeMeanFreq       | fBodyBodyAccJerkMag-meanFreq()            |
|                          freqdomain BodyGyroMagnitudeMean       |  fBodyBodyGyroMag-mean()                  |
|                       freqdomain BodyGyroMagnitude-StdDev       |   fBodyBodyGyroMag-std()                  |
|                      freqdomain BodyGyroMagnitudeMeanFreq       |   fBodyBodyGyroMag-meanFreq()             |
|                      freqdomain BodyGyroJerkMagnitudeMean       |   fBodyBodyGyroJerkMag-mean()             |
|                   freqdomain BodyGyroJerkMagnitude-StdDev       |    fBodyBodyGyroJerkMag-std()             |
|                  freqdomain BodyGyroJerkMagnitudeMeanFreq       |    fBodyBodyGyroJerkMag-meanFreq()        |