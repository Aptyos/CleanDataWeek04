###### For merging
The columns activity and subject_id where added (binded) to their respective dataset (test and data) 
from the files:
   - subject_[test|data].txt 
   - y_[test|data].txt  

###### Extraction criteria
Only variable calculating the mean and the standard deviation from the one collected were extracted:
-  According to the information provided, mean and standard deviation were respectively identified by including the labels "mean()" and "std()" in the name of variables.
- These vectors were excluded as they are only used on the angle() variable:    
 - gravityMean
 - tBodyAccMean
 - tBodyAccJerkMean
 - tBodyGyroMean
 - tBodyGyroJerkMean


###### The Extraction of the appropriate column names was performed from the features.txt file
Columns names were subsequently modified as indicated:
- The label "mean()" is replaced by Mean
- The label "std()"  is replaced by Std
- Dashes in the variable names were removed as they can affect later data manipulation
