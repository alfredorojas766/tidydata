#03/12/2017 
#Author: Alfredo Rojas 
#Project tidy data

library(plyr)
library(dplyr)
#download zip file with measures
fileURL <- "https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip"
download.file(fileURL, destfile= "~/Documents/Coursera/project", method="curl")

#unzip file
unzip("~/Documents/Coursera/project")

#going to folder
setwd("~/Documents/Coursera/UCI HAR Dataset")

#reading activity labels
activity_labels<-read.table("~/Documents/Coursera/UCI HAR Dataset/activity_labels.txt", col.names=c("activity_id","activity_name"), header=FALSE)

#reading feature labels
features<-read.table("~/Documents/Coursera/UCI HAR Dataset/features.txt", header=FALSE)


#train set
setwd("~/Documents/Coursera/UCI HAR Dataset/train")

subject_train<-read.table("~/Documents/Coursera/UCI HAR Dataset/train/subject_train.txt", col.names = "subject_id", header=FALSE)

X_train<-read.table("~/Documents/Coursera/UCI HAR Dataset/train/X_train.txt", col.names=features$V2, header=FALSE)

X_train<-X_train[,grep("mean|std",names(X_train))]

names(X_train)<-gsub("...","_",names(X_train), fixed=TRUE)
names(X_train)<-gsub("f","frequency_",names(X_train),fixed=TRUE)
names(X_train)<-gsub("tBody","time_Body",names(X_train),fixed=TRUE)
names(X_train)<-gsub("tGravity","time_Gravity",names(X_train),fixed=TRUE)
names(X_train)<-gsub("Freq","",names(X_train),fixed=TRUE, ignore.case=FALSE)
names(X_train)<-gsub(".","",names(X_train), fixed=TRUE)
names(X_train)<-gsub("mean","_mean",names(X_train), fixed=TRUE)
names(X_train)<-gsub("std","_std",names(X_train), fixed=TRUE)
names(X_train)<-gsub("Mag","_magnitude_",names(X_train), fixed=TRUE, ignore.case=FALSE)

#creating names for the train variables 

y_train<-read.table("~/Documents/Coursera/UCI HAR Dataset/train/y_train.txt", col.names="activity_id", header=FALSE)

y_train<-merge(y_train, activity_labels, all.x = TRUE)

#measures table creation 
measures<-cbind(y_train, X_train)
measures<-cbind(subject_train,measures)

#test set 
setwd("~/Documents/Coursera/UCI HAR Dataset/test")

#reading test subjects
subject_test<-read.table("~/Documents/Coursera/UCI HAR Dataset/test/subject_test.txt", col.names = "subject_id", header=FALSE)

X_test<-read.table("~/Documents/Coursera/UCI HAR Dataset/test/X_test.txt", col.names=features$V2, header=FALSE)

X_test<-X_test[,grep("mean|std",names(X_test))]

names(X_test)<-gsub("...","_",names(X_test), fixed=TRUE)
names(X_test)<-gsub("f","frequency_",names(X_test),fixed=TRUE)
names(X_test)<-gsub("tBody","time_Body",names(X_test),fixed=TRUE)
names(X_test)<-gsub("tGravity","time_Gravity",names(X_test),fixed=TRUE)
names(X_test)<-gsub("Freq","",names(X_test),fixed=TRUE, ignore.case=FALSE)
names(X_test)<-gsub(".","",names(X_test), fixed=TRUE)
names(X_test)<-gsub("mean","_mean",names(X_test), fixed=TRUE)
names(X_test)<-gsub("std","_std",names(X_test), fixed=TRUE)
names(X_test)<-gsub("Mag","_magnitude_",names(X_test), fixed=TRUE, ignore.case=FALSE)

y_test<-read.table("~/Documents/Coursera/UCI HAR Dataset/test/y_test.txt", col.names="activity_id", header=FALSE)

y_test<-merge(y_test, activity_labels, all.x = TRUE)

#creating test measures table
measures_test<-cbind(y_test, X_test)
measures_test<-cbind(subject_test,measures_test)

#total measures is the table with all test and train sets
total_test<-rbind(measures,measures_test)

#creating grouped tidy data set with averages of all measures by each subject by each type of activity 
grouped_total_measures<-total_test[-c(3)]
grouped_total_measures<-grouped_total_measures%>% group_by(activity_id,subject_id) %>%summarise_each(funs(mean))
grouped_total_measures<-merge(activity_labels,grouped_total_measures, by="activity_id", all.y = TRUE)

#creating tidy data table 
write.table(grouped_total_measures,file="tidydata.txt", row.names = FALSE)

names(grouped_total_measures)


