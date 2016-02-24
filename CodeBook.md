CodeBook.md

1/ Directories tree structure from the original download was kept for clarity.
However, directories "Inertial Signals" and their contents were removed as not needed 

2/ extraction criteria
Only variable calculating the mean and the standard deviation from the one collected were extracted:
-  According to the information provided, mean and standard deviation were respectively identified by including the labels "mean()" and "std()" in the name of variables.

These vectors were excluded as they are only used on the angle() variable:
    - gravityMean
    - tBodyAccMean
    - tBodyAccJerkMean
    - tBodyGyroMean
    - tBodyGyroJerkMean

##### 1/ adding activity and subject_id columns to each dataset before "merging".


##### 2/ Extracts the measurements on the mean and standard deviation  for each measurement.
from the features.txt file
- The label "mean()" is replaced by Mean
- The label "std()"  is replaced by Std
- Dashes in the variable names were removed as they can affect later data manipulation
