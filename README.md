# tidydata
Tidy Data Project 

I this project a folder was download in order to create a tidy data set out from it 

The way it was done was creating tables from all text files and then starting to join them by columns in the case of all the types of measures and by rows at the time of putting together the train and test set 

once this was done a data extract with standard deviation and means was created

in addition a final tidy data set is the output of the script in which grouped data by subject and type of activity with their correspondent mean values can was obtained.

The variable names were created in a way in which the name of the measure goes first and the the last part will be the correspondent number 

activity_id : activities identifier goes from 1 to 6 

activity_name : name of activity and identifier
                1 WALKING
                2 WALKING_UPSTAIRS
                3 WALKING_DOWNSTAIRS
                4 SITTING
                5 STANDING
                6 LAYING


subject_id : number of subjects in the test. goes from 1 to 30

time_freq_[1:516] : 516 and columns of data corresponding to time frequency values 

body_acc_x_[test,train]_[1:128] : 128 measures in each set (test and train) coming from measures in the x axis of the accelerometer

body_acc_y_[test,train]_[1:128] : 128 measures in each set (test and train) coming from measures in the y axis of the accelerometer

body_acc_z_[test,train]_[1:128] : 128 measures in each set (test and train) coming from measures in the z axis of the accelerometer

body_gyro_x_[test,train]_[1:128] : 128 measures in each set (test and train) coming from measures in the x axis of the gyroscope

body_gyro_y_[test,train]_[1:128] : 128 measures in each set (test and train) coming from measures in the y axis of the gyroscope

body_gyro_z_[test,train]_[1:128] : 128 measures in each set (test and train) coming from measures in the z axis of the gyroscope

total_acc_x_[test,train]_[1:128] : 128 measures in each set (test and train) coming from measures in the x axis of the total acceleration

total_acc_y_[test,train]_[1:128] : 128 measures in each set (test and train) coming from measures in the y axis of the total acceleration

total_acc_z_[test,train]_[1:128] : 128 measures in each set (test and train) coming from measures in the z axis of the total acceleration
