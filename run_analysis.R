#Coursera getting and cleaning data - PROJECT


#project specifications
# 1.Merges the training and the test sets to create one data set.
# 2.Extracts only the measurements on the mean and standard deviation for each measurement. 
# 3.Uses descriptive activity names to name the activities in the data set
# 4.Appropriately labels the data set with descriptive variable names. 
# 5.Creates a second, independent tidy data set with the average of each variable for each activity and each subject. 

# 0.install necessary packages

install.packages("reshape")      # reshape and plyr packages needed for ddply command
install.packages("plyr")
install.packages("utils")         # utils needed for capture.output
library(reshape)                  #please ignore the warnings if the packages are already installed
library(plyr)
library(utils)


# 1.Merges the training and the test sets to create one data set.

# Getting data

features<-read.table('./features.txt')					 			#read features.txt
activityType<-read.table('./activity_labels.txt')		 			#read activity_labels.txt
subjectTrain<-read.table('./train/subject_train.txt') 				#read subject_train.txt
xTrain<-read.table('./train/x_train.txt')							#read x_train.txt
yTrain<-read.table('./train/y_train.txt') 							#read y_train.txt



# Giving column names
colnames(activityType)<- c('activityid','activitytype')
colnames(subjectTrain)<-"subjectid"
colnames(xTrain)<-features[,2]
colnames(yTrain)<-"activityid"


# form training dataset by column binding 
trainingData<-cbind(subjectTrain,yTrain,xTrain)

# Getting data
subjectTest<-read.table('./test/subject_test.txt') 						#read subject_test.txt
xTest<-read.table('./test/x_test.txt') 									#read x_test.txt
yTest<-read.table('./test/y_test.txt') 									#read y_test.txt

# Giving column names
colnames(subjectTest)<-"subjectid"
colnames(xTest)<-features[,2]
colnames(yTest)<-"activityid"

# form test dataset by column binding 
testData<-cbind(subjectTest,yTest,xTest)


# bind training and test dataset to create a final data set
finalData<-rbind(trainingData,testData)


# 2.Extracts only the measurements on the mean and standard deviation for each measurement.


pattern = "mean|std|subjectid|activityid" 										#take only mean and standard deviation columns 
tidyData = finalData[,grep(pattern , names(finalData), value=TRUE)]				#and corresponding subjectid and activityid
 

 
# 3.Uses descriptive activity names to name the activities in the data set

activityName<-activityType[tidyData[,2],2]				#match the activity id with corresponding activity name from 
tidyData[,2]<-activityName								# activityType file
colNames<-colnames(tidyData)
colNames[2]<-"activity"									#rename the column as activity
colnames(tidyData)<-colNames


# 4.Appropriately labels the data set with descriptive variable names.

#this part entirely deals with improving readability of column names

for (i in 1:length(colNames)) 
{
  colNames[i] = gsub("\\()","",colNames[i])
  colNames[i] = gsub("std","StdDev",colNames[i])    			
  colNames[i] = gsub("-mean","Mean",colNames[i])   
  colNames[i] = gsub("^(t)","timedomain ",colNames[i])
  colNames[i] = gsub("^(f)","freqdomain ",colNames[i])
  colNames[i]=  gsub("BodyAcc","Acceleration of body ",colNames[i])
  colNames[i]=  gsub("GravityAcc","Acceleration of gravity ",colNames[i])
  colNames[i] = gsub("([Gg]ravity)","Gravity",colNames[i])
  colNames[i] = gsub("([Bb]ody[Bb]ody|[Bb]ody)","Body",colNames[i])
  colNames[i] = gsub("[Gg]yro","Gyro",colNames[i])
  colNames[i]=gsub("X","Xaxis",colNames[i])
  colNames[i]=gsub("Y","Yaxis",colNames[i])
  colNames[i]=gsub("Z","Zaxis",colNames[i])
  colNames[i]=gsub("[Mm]ag","Magnitude",colNames[i])
  
  
};


colnames(tidyData) = colNames;  			# Reassigning the new descriptive column names to the finalData set


# 5.Creates a second, independent tidy data set with the average of each variable for each activity and each subject. 


result = ddply(tidyData, .(activity, subjectid), numcolwise(mean))   # mean for each variable and activity , order according to subjectid

cat(capture.output(result), file = 'tidyData.txt', sep = '\n')      #write the output onto a text file

#just write.table will not provide properly formatted output as column names and data are of variable length
#capture.output aligns output properly and provides a more readable output
#scroll down the text file to see all the columns. the columns are concatenated vertically