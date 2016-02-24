library(dplyr)

# adding activity and subject_id columns to each dataset
# ------------------------------------------------------
acti_train <- read.table("./train/y_train.txt", stringsAsFactors = FALSE)
names(acti_train) <- "activity"
sbjt_train <- read.table("./train/subject_train.txt", stringsAsFactors = FALSE)
names(sbjt_train) <- "subject_id"
data_train <- read.table("./train/X_train.txt", stringsAsFactors = FALSE)
data_train <- cbind(acti_train, sbjt_train, data_train)

acti_test <- read.table("./test/y_test.txt", stringsAsFactors = FALSE)
names(acti_test) <- "activity"
sbjt_test <- read.table("./test/subject_test.txt", stringsAsFactors = FALSE)
names(sbjt_test) <- "subject_id"
data_test <- read.table("./test/X_test.txt", stringsAsFactors = FALSE)
data_test <- cbind(acti_test, sbjt_test, data_test)

# 1/ "merge" datasets
full_data <- union(data_train, data_test)

# 2/ Extracts the measurements on the mean and standard deviation  for each measurement.
#    from the features.txt file
dtf_features <- read.table("features.txt", stringsAsFactors = FALSE)
dtf_features <- dtf_features[ grep("mean\\(\\)|std\\(\\)", dtf_features$V2), ] 
#### add a column - obs - to later match default column name with measurement column name
#### transform features values to include the 2 criteria.
dtf_feat <- 
  dtf_features %>%
  mutate(obs = sub(" ","",paste("V",V1))) %>%
  mutate(V2 = sub("\\(\\)","", V2)) %>%
  # substitutions to prevent errors 
  mutate(V2 = sub("mean","Mean", V2)) %>%
  mutate(V2 = sub("std","Std", V2)) %>%
  mutate(V2 = gsub("-","", V2)) 

#### extraction by matching Vn columns in dataset with column names in dtf_feat$obs
result_data <- select(full_data,activity, subject_id, one_of(dtf_feat$obs)) 

# 3/Uses descriptive activity names to name the activities in the data set 
v_activity <- c("WALKING","WALKING_UPSTAIRS","WALKING_DOWNSTAIRS","SITTING","STANDING","LAYING")
result_data <- mutate(result_data, activity = v_activity[activity] ) 

# 4/ Appropriately labels the data set with descriptive variable names.
#    generate dataset file for next step
names(result_data) <- c("activity","subject_id", dtf_feat$V2)

# 5/ independent tidy data set with the average of each variable 
#    for each activity and each subject
grp_result  <- 
  result_data %>%
  group_by(activity, subject_id) %>%
  summarize_each ( funs(mean)) 


