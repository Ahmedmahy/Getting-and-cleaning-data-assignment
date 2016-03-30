# Getting-and-cleaning-data-assignment

A repository for "Getting and Cleaning data" Coursera course containing required scripts

## Raw data description

x_data contained 10299 rows and  66 columns
y_data contained 10299 rows and  1 column
there are 561 features



## Script details
The script is contained in the r file run_analysis.R which I uploaded to this repo.
Scirpt is detailed in the CodeBook.md file but mainly I used these functions
1-cbind to bind columns
2-write.table , read.table to read and write data
3-grep to find mean and std words in the features vector
4-ddply from the package plyr to build a tidy dataset using the averages


## Tidy data description

Tidy data were exported to tidydata.txt file and were uploaded to this repo.
