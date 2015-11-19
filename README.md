# GaCD_project
This repository contains the R script in order to complete Getting and Cleaning data project in Coursera

Files
-------------

* **run_analysis.R** This script contains the command lines and functions required to get the result requested in the project assignment.
  1. At the begining of the script there is one function "getMeanStdValues" that will help to get the required variables in the dataset
  2. Next the script reads the data from the files provided and merge the training and test data.
  3. Next each colum in named accoring with the values provided.
  4. The value for the Activities are replaced by the Activity description
  5. All the data is put together in a single data.frame
  6. The final dataset is obtained by using dplyr library "group_by" and "summarize_each"


* **CodeBook.md** code book that describes the variables, the data, and any transformations or work performed to clean up the data.


