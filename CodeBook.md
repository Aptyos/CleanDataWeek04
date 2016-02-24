CodeBook.md

1/ Directories tree structure from the original download was kept for clarity.
However, directories "Inertial Signals" and their contents were removed as not needed 

2/ extraction criteria
Only variable calculating the mean and the standard deviation from the one collected were extracted:
-  According to the information provided, mean and standard deviation were respectively identified by including the labels "mean()" and "std()" in the name of variables.

- These vectors were excluded as they are only used on the angle() variable:    
 - gravityMean
 - tBodyAccMean
 - tBodyAccJerkMean
 - tBodyGyroMean
 - tBodyGyroJerkMean

##### The columns activity and subject_id where added (binded) from the subject_[test|data].txt and y_[test|data].txt files to their respective dataset ( test and data) before "merging".

##### The Extraction of the measurements on the mean and standard deviation was base on the patterns:
  _std()_ and mean()_
from the features.txt file
- The label "mean()" is replaced by Mean
- The label "std()"  is replaced by Std
- Dashes in the variable names were removed as they can affect later data manipulation
