#Getting and cleaning data codebook
##Getting data
1- I imported all the needed data first using read.table which include:
    x_train, y_train, x_test, y_test, subject_train and subject_test
2- I also imported the features and activities
## Meriging the data
1- I merged the training and test x_data  and so for y_data and subject_data
## By exploring data I find :
1-x_data contains 10299 rows and     66 columns
2-y_data contains 10299 rows and     1 column
3-features are 561
##finding mean and std features
 1-I used grep and | operator to search and find features containing the words mean or std
 2-I extracted these features in a serate variable and extracted from the x_data dataframe the columns with these features
3- I then, renamed these columns in the new x_data subset with the features to look clear .


##modifing y_data and renamed it using the activities

##new tidy data
1- I merged all three data frames together using cbind
2-I imported the plyr package and used ddply() to easily create a new dataset using the averages
3-I saved the new dataset to a txt file


