## GETTING AND CLEANING DATA - COURSE PROJECT

The repo contains a codebook which describes the variable used , column names ,transformations into descriptive names
The repo also contains run_analysis.R file which contains the code that does the following

1.Merges the training and the test sets to create one data set.
2.Extracts only the measurements on the mean and standard deviation for each measurement. 
3.Uses descriptive activity names to name the activities in the data set
4.Appropriately labels the data set with descriptive variable names. 
5.Creates a second, independent tidy data set with the average of each variable for each activity and each subject. 

Before running the code , do the following

*download the samsung data from the link given in the Coursera website
*unzip it 
*set this as your working directory using setwd

Else , run the following code in R and save in the working directory

zip.url <- 'https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip'
zip.file <- 'dataset.zip'
download.file(zip.url, destfile = zip.file, method = 'curl')
unzip(zip.file)


## EXPLANATION OF SCRIPT

* necessary packages are first installed
*data from all the .txt files are read using read.table command
*column names are given to each file
*testdata and training data are separately column binded
*the above result is row binded 
*This gives the merged data of test and train

*using grep , mean and standard deviation columns are alone extracted
*other features are ignored

*activity Id is replaced by corresponding activitynames by using activityType file

*to improve readability, the columns are given proper names
*for eg. X,Y,Z are replaced as Xaxis,Yaxis,Zaxis : BodyACC or bodyacc is replaced by acceleration of body

*the data obtained is sorted according to subject id after taking MEAN columnwise
*Result tidyData contains mean of each variable and subjectid of features that contain mean and standard deviation
*write.table doesnt provide a proper readable output. COlumns are misaligned
*To prevent this, we use cat and capture.output

## The tidy data is tidyData.txt
##Scroll down to see all the features. They are concatenated vertically to provide a neat output


