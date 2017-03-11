library(plyr)
library(dplyr)

fileURL <- "https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip"
download.file(fileURL, destfile= "~/Documents/Coursera/project", method="curl")
unzip("~/Documents/Coursera/project")

setwd("~/Documents/Coursera/UCI HAR Dataset")

activity_labels<-read.table("~/Documents/Coursera/UCI HAR Dataset/activity_labels.txt", col.names=c("activity_id","activity_name"), header=FALSE)

setwd("~/Documents/Coursera/UCI HAR Dataset/train")

subject_train<-read.table("~/Documents/Coursera/UCI HAR Dataset/train/subject_train.txt", col.names = "subject_id", header=FALSE)

X_train<-read.table("~/Documents/Coursera/UCI HAR Dataset/train/X_train.txt", col.names=c(1:561), header=FALSE)

colnames(X_train) <- paste("time_freq", colnames(X_train), sep = "_")

y_train<-read.table("~/Documents/Coursera/UCI HAR Dataset/train/y_train.txt", col.names="activity_id", header=FALSE)

y_train<-merge(y_train, activity_labels, all.x = TRUE)

measures<-cbind(y_train, X_train)
measures<-cbind(subject_train,measures)

setwd("~/Documents/Coursera/UCI HAR Dataset/train/Inertial Signals")

body_acc_x_train<-read.table("~/Documents/Coursera/UCI HAR Dataset/train/Inertial Signals/body_acc_x_train.txt", header=FALSE)
colnames(body_acc_x_train) <- paste("body_acc_x", colnames(body_acc_x_train), sep = "_")

body_acc_y_train<-read.table("~/Documents/Coursera/UCI HAR Dataset/train/Inertial Signals/body_acc_y_train.txt", header=FALSE)
colnames(body_acc_y_train) <- paste("body_acc_y", colnames(body_acc_y_train), sep = "_")

body_acc_z_train<-read.table("~/Documents/Coursera/UCI HAR Dataset/train/Inertial Signals/body_acc_z_train.txt", header=FALSE)
colnames(body_acc_z_train) <- paste("body_acc_z", colnames(body_acc_z_train), sep = "_")

body_gyro_x_train<-read.table("~/Documents/Coursera/UCI HAR Dataset/train/Inertial Signals/body_gyro_x_train.txt", header=FALSE)
colnames(body_gyro_x_train) <- paste("body_gyro_x", colnames(body_gyro_x_train), sep = "_")

body_gyro_y_train<-read.table("~/Documents/Coursera/UCI HAR Dataset/train/Inertial Signals/body_gyro_y_train.txt", header=FALSE)
colnames(body_gyro_y_train) <- paste("body_gyro_y", colnames(body_gyro_y_train), sep = "_")

body_gyro_z_train<-read.table("~/Documents/Coursera/UCI HAR Dataset/train/Inertial Signals/body_gyro_z_train.txt", header=FALSE)
colnames(body_gyro_z_train) <- paste("body_gyro_z", colnames(body_gyro_z_train), sep = "_")

total_acc_x_train<-read.table("~/Documents/Coursera/UCI HAR Dataset/train/Inertial Signals/total_acc_x_train.txt", header=FALSE)
colnames(total_acc_x_train) <- paste("total_acc_x", colnames(total_acc_x_train), sep = "_")

total_acc_y_train<-read.table("~/Documents/Coursera/UCI HAR Dataset/train/Inertial Signals/total_acc_y_train.txt", header=FALSE)
colnames(total_acc_y_train) <- paste("total_acc_y", colnames(total_acc_y_train), sep = "_")

total_acc_z_train<-read.table("~/Documents/Coursera/UCI HAR Dataset/train/Inertial Signals/total_acc_z_train.txt", header=FALSE)
colnames(total_acc_z_train) <- paste("total_acc_z", colnames(total_acc_z_train), sep = "_")

measures<-cbind(measures,body_acc_x_train,body_acc_y_train,body_acc_z_train,body_gyro_x_train,body_gyro_y_train,body_gyro_z_train,total_acc_x_train,total_acc_y_train,total_acc_z_train)


setwd("~/Documents/Coursera/UCI HAR Dataset/test")

subject_test<-read.table("~/Documents/Coursera/UCI HAR Dataset/test/subject_test.txt", col.names = "subject_id", header=FALSE)

X_test<-read.table("~/Documents/Coursera/UCI HAR Dataset/test/X_test.txt", col.names=c(1:561), header=FALSE)

colnames(X_test) <- paste("time_freq", colnames(X_test), sep = "_")

y_test<-read.table("~/Documents/Coursera/UCI HAR Dataset/test/y_test.txt", col.names="activity_id", header=FALSE)

y_test<-merge(y_test, activity_labels, all.x = TRUE)

measures_test<-cbind(y_test, X_test)
measures_test<-cbind(measures_test,subject_test)

setwd("~/Documents/Coursera/UCI HAR Dataset/test/Inertial Signals")

body_acc_x_test<-read.table("~/Documents/Coursera/UCI HAR Dataset/test/Inertial Signals/body_acc_x_test.txt", header=FALSE)
colnames(body_acc_x_test) <- paste("body_acc_x", colnames(body_acc_x_test), sep = "_")

body_acc_y_test<-read.table("~/Documents/Coursera/UCI HAR Dataset/test/Inertial Signals/body_acc_y_test.txt", header=FALSE)
colnames(body_acc_y_test) <- paste("body_acc_y", colnames(body_acc_y_test), sep = "_")

body_acc_z_test<-read.table("~/Documents/Coursera/UCI HAR Dataset/test/Inertial Signals/body_acc_z_test.txt", header=FALSE)
colnames(body_acc_z_test) <- paste("body_acc_z", colnames(body_acc_z_test), sep = "_")

body_gyro_x_test<-read.table("~/Documents/Coursera/UCI HAR Dataset/test/Inertial Signals/body_gyro_x_test.txt", header=FALSE)
colnames(body_gyro_x_test) <- paste("body_gyro_x", colnames(body_gyro_x_test), sep = "_")

body_gyro_y_test<-read.table("~/Documents/Coursera/UCI HAR Dataset/test/Inertial Signals/body_gyro_y_test.txt", header=FALSE)
colnames(body_gyro_y_test) <- paste("body_gyro_y", colnames(body_gyro_y_test), sep = "_")

body_gyro_z_test<-read.table("~/Documents/Coursera/UCI HAR Dataset/test/Inertial Signals/body_gyro_z_test.txt", header=FALSE)
colnames(body_gyro_z_test) <- paste("body_gyro_z", colnames(body_gyro_z_test), sep = "_")

total_acc_x_test<-read.table("~/Documents/Coursera/UCI HAR Dataset/test/Inertial Signals/total_acc_x_test.txt", header=FALSE)
colnames(total_acc_x_test) <- paste("total_acc_x", colnames(total_acc_x_test), sep = "_")

total_acc_y_test<-read.table("~/Documents/Coursera/UCI HAR Dataset/test/Inertial Signals/total_acc_y_test.txt", header=FALSE)
colnames(total_acc_y_test) <- paste("total_acc_y", colnames(total_acc_y_test), sep = "_")

total_acc_z_test<-read.table("~/Documents/Coursera/UCI HAR Dataset/test/Inertial Signals/total_acc_z_test.txt", header=FALSE)
colnames(total_acc_z_test) <- paste("total_acc_z", colnames(total_acc_z_test), sep = "_")

measures_test<-cbind(measures_test,body_acc_x_test,body_acc_y_test,body_acc_z_test,body_gyro_x_test,body_gyro_y_test,body_gyro_z_test,total_acc_x_test,total_acc_y_test,total_acc_z_test)

total_measures<-rbind(measures,measures_test)

calculations<-total_measures[4:ncol(total_measures)]
calculations<-as.data.frame( t(sapply(calculations, function(cl) list(means=mean(cl,na.rm=TRUE),sds=sd(cl,na.rm=TRUE))) ))

grouped_total_measures<-total_measures[-c(3)]
grouped_total_measures<-grouped_total_measures%>% group_by(activity_id,subject_id) %>%summarise_each(funs(mean))
grouped_total_measures<-merge(activity_labels,grouped_total_measures, by="activity_id", all.y = TRUE)

write.table(grouped_total_measures,file="tidydata.txt", row.names = FALSE)

