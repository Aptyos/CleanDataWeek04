CodeBook.md

Code book that describes the variables, the data, and any transformations or work performed to clean up the data

1/ Directories tree structure from the original download was kept for clarity.
However, directories "Inertial Signals" and their contents were removed as not needed 

2/ extraction criteria
Only variable calculating the mean and the standard deviation from the one collected were extracted:
-  According to the information provided, mean and standard deviation were respectively identified by including the labels "mean()" and "std()"
   in the name of variables.
   These vectors were excluded as they are only used on the angle() variable:
     gravityMean
     tBodyAccMean
     tBodyAccJerkMean
     tBodyGyroMean
     tBodyGyroJerkMean

# 1/ adding activity and subject_id columns to each dataset before "merging".


# 2/ Extracts the measurements on the mean and standard deviation  for each measurement.
#    from the features.txt file
dtf_features <- read.table("features.txt", stringsAsFactors = FALSE)
dtf_features <- dtf_features[ grep("mean\\(\\)|std\\(\\)", dtf_features$V2), ] 
add a column - obs - to later match default column name with measurement column name
#### transform features values to include the 2 criteria.
- The label "mean()" is replaced by Mean
- ......... "std()"  is replaced by Std
- Dashes in the variable names were removed as they can affect later data manipulation

#### extraction by matching Vn columns in dataset with column names in dtf_feat$obs
result_data <- select(full_data,activity, subject_id, one_of(dtf_feat$obs)) 

# 3/Uses descriptive activity names to name the activities in the data set 
v_activity <- c("WALKING","WALKING_UPSTAIRS","WALKING_DOWNSTAIRS","SITTING","STANDING","LAYING")
result_data <- mutate(result_data, activity = v_activity[activity] ) 

# 4/ Appropriately labels the data set with descriptive variable names.
#    generate dataset file for next step
names(result_data) <- c("activity","subject_id", dtf_feat$V2)

if(!dir.exists("./jym_results")){dir.create("./jym_results")}

write.table(result_data,"./jym_results/result_data.txt")

# 5/ independent tidy data set with the average of each variable 
#    for each activity and each subject
grp_result  <- 
  result_data %>%
  group_by(activity, subject_id) %>%
  summarize_each ( funs(mean)) 

write.table(grp_result,"./jym_results/grp_results.txt")