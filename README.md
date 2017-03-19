# tidydata
Tidy Data Project 

I this project a folder was download in order to create a tidy data set out from it 

The way it was done was creating tables from all text files and then starting to join them by columns in the case of all the types of measures and by rows at the time of putting together the train and test set. 

The identifier from the activities was assigned to the activity_id in one of the sets to being able of properly name them. 

The features file was added as the column names of the time frequency variables

Once this was done the columns that contained the means and std were selected

The variable names were treated in order to be descriptive and understandable

in addition a final tidy data set is the output of the script in which grouped data by subject and type of activity with their correspondent mean values can was obtained.

The variable names were created in a way in which the name of the measure goes first and the the last part will be the correspondent type of measure and axis or magnitude

activity_id : activities identifier goes from 1 to 6 

activity_name : name of activity and identifier
                1 WALKING
                2 WALKING_UPSTAIRS
                3 WALKING_DOWNSTAIRS
                4 SITTING
                5 STANDING
                6 LAYING


subject_id : number of subjects in the test. goes from 1 to 30
    
Descriptive variables created 

time and frequency differentiated
XYZ variables, one ofr each axis 
mean and std defined in the name 
magnitude vectors defined 

"activity_id"                                
"activity_name"                             
"subject_id"                                
"time_BodyAcc_mean_[XYZ]"                                             
"time_BodyAcc_std_[XYZ]"                                      
"time_GravityAcc_mean_[XYZ]"                      
"time_GravityAcc_std_[XYZ]"               
"time_BodyAccJerk_mean_[XYZ]"                             
"time_BodyAccJerk_std_[XYZ]"                                  
"time_BodyGyro_mean_[XYZ]"                               
"time_BodyGyro_std_[XYZ]"                                   
"time_BodyGyroJerk_mean_[XYZ]"                           
"time_BodyGyroJerk_std_[XYZ]"                      
"time_BodyAcc_magnitude__mean"               
"time_BodyAcc_magnitude__std"                
"time_GravityAcc_magnitude__mean"           
"time_GravityAcc_magnitude__std"             
"time_BodyAccJerk_magnitude__mean"           
"time_BodyAccJerk_magnitude__std"           
"time_BodyGyro_magnitude__mean"              
"time_BodyGyro_magnitude__std"               
"time_BodyGyroJerk_magnitude__mean"         
"time_BodyGyroJerk_magnitude__std"           
"frequency_BodyAcc_mean_[XYZ]"                   
"frequency_BodyAcc_std_[XYZ]"                  
"frequency_BodyAccJerk_mean_[XYZ]"            
"frequency_BodyAccJerk_std_[XYZ]"             
"frequency_BodyGyro_mean_[XYZ]"             
"frequency_BodyGyro_std_[XYZ]"       
"frequency_BodyAcc_magnitude__mean"         
"frequency_BodyAcc_magnitude__std"          
"frequency_BodyBodyAccJerk_magnitude__mean" 
"frequency_BodyBodyAccJerk_magnitude__std"  
"frequency_BodyBodyGyro_magnitude__mean"    
"frequency_BodyBodyGyro_magnitude__std"      
"frequency_BodyBodyGyroJerk_magnitude__mean"
"frequency_BodyBodyGyroJerk_magnitude__std"
