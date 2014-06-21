
##Reads relevant data into dataframes
     Xtest<-read.table("UCI HAR Dataset/test/X_test.txt")
     ytest<-read.table("UCI HAR Dataset/test/y_test.txt")
     Xtrain<-read.table("UCI HAR Dataset/train/X_train.txt")
     ytrain<-read.table("UCI HAR Dataset/train/y_train.txt")
     featurename<-read.table("UCI HAR Dataset/features.txt")
     testsubject<-read.table("UCI HAR Dataset/test/subject_test.txt")
     trainsubject<-read.table("UCI HAR Dataset/train/subject_train.txt")
##Merges the training and the test sets to create one data set.
     ux<-rbind(Xtest,Xtrain)
##Renames variable lables with description     
     colnames(ux)<-featurename[,2]
##Creates index for variables with mean and standard deviation for each measurement
     meancol<-grep("-mean\\(\\)", names(ux))
     stdcol<-grep("-std\\(\\)", names(ux))
     colindex<-sort(c(meancol,stdcol))
     df<-ux[,colindex]
##Names activity in data set and merges with the named, merged dataframe
     uy<-rbind(ytest,ytrain)
     colnames(uy)[1]<-"activity"
     library(plyr)
     df$activity<-uy
##Adds subject and observation variable
     usubject<-rbind(testsubject,trainsubject)
     colnames(usubject)[1]<-"subject"
     df$subject<-usubject
     df$observation<-rownames(df)
##Creates a second, independent tidy data set with the average of each variable for each activity and each subject. 
     dfs<-aggregate(df,df$subject,mean)
     dfss<-dfs[,1:67]
     dfss$subject<-paste("subject",dfss$subject)
     colnames(dfss)[1]<-"subject and activity type"
     dfa<-aggregate(df,df$activity,mean)
     dfaa<-dfa[,1:67]
     dfaa$activity<-revalue(as.factor(dfaa[,1]), c("1"="walking","2"="walking_upstairs","3"="walking_downstairs","4"="sitting","5"="standing","6"="laying"))
     colnames(dfaa)[1]<-"subject and activity type"
     tidydf<-rbind(dfss,dfaa)
     print(tidydf)
     

