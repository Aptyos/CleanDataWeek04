# CleanDataWeek04
Week04 Assignment of the Data Cleaning course


#### This dataset was generated from the original work of Smartlabs:

       *******************************************************************   
       Human Activity Recognition Using Smartphones Dataset Version 1.0      
       ==================================================================    
       Jorge L. Reyes-Ortiz, Davide Anguita, Alessandro Ghio, Luca Oneto.    
       Smartlab - Non Linear Complex Systems Laboratory                      
       DITEN - Università degli Studi di Genova.                             
       Via Opera Pia 11A, I-16145, Genoa, Italy.                             
       activityrecognition@smartlab.ws                                       
       www.smartlab.ws                                                      
       *-----------------------------------------------------------------*   
       These initial datasets result from experiments with a group of 30 volunteers within an age bracket of 19-48 years. 
       Each person performed six activities: WALKING, WALKING_UPSTAIRS, WALKING_DOWNSTAIRS, SITTING, STANDING, LAYING wearing a smartphone (Samsung Galaxy S II) on the waist.                                                              
       Using its embedded accelerometer and gyroscope, 3-axial linear acceleration and 3-axial angular velocity at a constant rate of 50Hz were captured.                                                 
       The experiments have been video-recorded to label the data manually. The obtained dataset has been randomly partitioned into two sets,                                                           
       where 70% of the volunteers was selected for generating the training data and 30% the test data.                                                                                                 
                                                                                                                                                                                                 
       The sensor signals (accelerometer and gyroscope) were pre-processed by applying noise filters and then sampled in fixed-width sliding windows of 2.56 sec and 50% overlap (128 readings/window). 
       The sensor acceleration signal, which has gravitational and body motion components, was separated using a Butterworth low-pass filter into body acceleration and gravity.                        
       The gravitational force is assumed to have only low frequency components, therefore a filter with 0.3 Hz cutoff frequency was used.
       From each window, a vector of features was obtained by calculating variables from the time and frequency domain. See 'features_info.txt' for more details.

       Reference; 
       ----------
       Davide Anguita, Alessandro Ghio, Luca Oneto, Xavier Parra and Jorge L. Reyes-Ortiz. Human Activity Recognition on Smartphones using a Multiclass Hardware-Friendly Support Vector Machine. 
       International Workshop of Ambient Assisted Living (IWAAL 2012). Vitoria-Gasteiz, Spain. Dec 2012 
       **********************************************************************************************************************************************************


####  Download the files to a chosen directory
the initial datasets were obtained by downloading the file:
[Dataset.zip](https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip)


####  Execution of the script "run_analysis.R"  in RStudio or RGui 
   with the folloinwg commands:
       - set the session to the current directory:
       setwd("C:/Coursera/03_dataCleaning/week04/CoursePjt/gitResults")
       - execute the script:
       source('./gitResults/run_analysis.R') 

   first produces the dataset "result_data" following the ordered steps below:
      - assembling the test and train datasets,
      - extracting only mean and standard deviation
      - using descriptive activity names to name the activities in the data set
      - labelling the data set with descriptive variable names.

   and an independent tidy dataset "grp_result" 
      - created from the previous "result_data" dataset with the average of each variable for each activity and each subject.


####  each record is a 8-variable vector with. 
	- an activity label, 
        - an identifier of the subject who carried out the experiment
        - 66 time and frequency domain variables restricted to mean and standard deviation

#### The following files are included:
- 'README.txt'

required files( and directories) to execute succesfully the script "run_analysis.R" :
- 'new_features_info.txt': Shows information about the variables used on the feature vector.
- 'features.txt': List of all features.

- 'train/X_train.txt': Original Training set.
- 'train/y_train.txt': Original Training labels.
- 'train/subject_train.txt': Each row identifies the subject who performed the activity for each window sample. Its range is from 1 to 30.

- 'test/X_test.txt': Original Test set.
- 'test/y_test.txt': Original Test labels.
>>>>>>> 64bf81534ec07c1292f55c32a477547a580e9ed0
- 'test/subject_test.txt':   Each row identifies the subject who performed the activity for each window sample. Its range is from 2 to 24.
