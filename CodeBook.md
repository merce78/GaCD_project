
Code Book
=============

* **Function Definition: getMeanStdValues**. This function will select all the variables including "mean" or "std" characters in order to identify the columns that are measuring that info and to obtain the labels for the column names.

* **Loading dplyr**. In order to use this library to manage the data.

* **Read data**. Reading the data from the follosing files.
	* activity_labels.txt
	* test/X_test.txt
	* test/y_test.txt
	* test/subject_test.txt
	* train/X_train.txt
	* train/y_train.txt
	* train/subject_train.txt

* **Merging train and test data in one single dataframe**. The two sets of data are together in the following varibles:
	* x -> Dataframe with all the observations.
	* y -> dataframe with the activities for each observation.
	* s -> datagrame with the subjects for each observation.


* **Assign name to subject dataframe**

* **Replace number values in "y" dataframe by the descriptive test**. This generates a new dataframe with the Activities as TXT called "label_ac"

* **New Dataframe generation with the requested variables**. To do that we invoke the function getMeanStdValues and generate a new dataframe "myfeatures" that contain the number of column and txt description for our variables.

* **Choose only the columns we are interested**. We extract from X just the columns we're interested generating another dataframe "mydf". We name the columns of this dataframe according with the values of "myfeatures"

* **Add to mydf one column for the activities and one column for subject**. We combine dataframe "s" with "mydf" and later "labels_ac" with the resulting. So the dataframe with all the values contains the following columns:

"Activity"
"Subject"
"tBodyAcc-mean()-X"
"tBodyAcc-mean()-Y"
"tBodyAcc-mean()-Z"
"tBodyAcc-std()-X"
"tBodyAcc-std()-Y"
"tBodyAcc-std()-Z"
"tGravityAcc-mean()-X"
"tGravityAcc-mean()-Y"
"tGravityAcc-mean()-Z"
"tGravityAcc-std()-X"
"tGravityAcc-std()-Y"
"tGravityAcc-std()-Z"
"tBodyAccJerk-mean()-X"
"tBodyAccJerk-mean()-Y"
"tBodyAccJerk-mean()-Z"
"tBodyAccJerk-std()-X"
"tBodyAccJerk-std()-Y"
"tBodyAccJerk-std()-Z"
"tBodyGyro-mean()-X"
"tBodyGyro-mean()-Y"
"tBodyGyro-mean()-Z"
"tBodyGyro-std()-X"
"tBodyGyro-std()-Y"
"tBodyGyro-std()-Z"
"tBodyGyroJerk-mean()-X"
"tBodyGyroJerk-mean()-Y"
"tBodyGyroJerk-mean()-Z"
"tBodyGyroJerk-std()-X"
"tBodyGyroJerk-std()-Y"
"tBodyGyroJerk-std()-Z"
"tBodyAccMag-mean()"
"tBodyAccMag-std()"
"tGravityAccMag-mean()"
"tGravityAccMag-std()"
"tBodyAccJerkMag-mean()"
"tBodyAccJerkMag-std()"
"tBodyGyroMag-mean()"
"tBodyGyroMag-std()"
"tBodyGyroJerkMag-mean()"
"tBodyGyroJerkMag-std()"
"fBodyAcc-mean()-X"
"fBodyAcc-mean()-Y"
"fBodyAcc-mean()-Z"
"fBodyAcc-std()-X"
"fBodyAcc-std()-Y"
"fBodyAcc-std()-Z"
"fBodyAccJerk-mean()-X"
"fBodyAccJerk-mean()-Y"
"fBodyAccJerk-mean()-Z"
"fBodyAccJerk-std()-X"
"fBodyAccJerk-std()-Y"
"fBodyAccJerk-std()-Z"
"fBodyGyro-mean()-X"
"fBodyGyro-mean()-Y"
"fBodyGyro-mean()-Z"
"fBodyGyro-std()-X"
"fBodyGyro-std()-Y"
"fBodyGyro-std()-Z"
"fBodyAccMag-mean()"
"fBodyAccMag-std()"
"fBodyBodyAccJerkMag-mean()"
"fBodyBodyAccJerkMag-std()"
"fBodyBodyGyroMag-mean()"
"fBodyBodyGyroMag-std()"
"fBodyBodyGyroJerkMag-mean()"
"fBodyBodyGyroJerkMag-std()"

* **Group by Activities and subjects**. Using dplyr library we generate another dataframe "gmydr" that is "mydf" grouped by "activity" and "subject"

* **Get the average for each value**. by "summarise_each" I get the final dataframe "res_df" wich values are printed in the file "result_dataset.txt"



