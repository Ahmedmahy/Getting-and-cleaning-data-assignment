#importing data
x_train <- read.table("X_train.txt")
y_train <- read.table("y_train.txt")
subject_train <- read.table("subject_train.txt")
x_test <- read.table("X_test.txt")
y_test <- read.table("y_test.txt")
subject_test <- read.table("subject_test.txt")
#importing features and activities
features <- read.table("features.txt")[, 2]
activities <- read.table("activity_labels.txt")
#-------------------------
#merging data
x_data <- rbind(x_train, x_test)
y_data <- rbind(y_train, y_test)
subject_data <- rbind(subject_train, subject_test)
#exploring data
class(x_data)
dim(x_data)
head(x_data)
activities
features
#------------------------
#finding mean or std features and extracting them
meansd.features <- grep("-(mean|std)\\(\\)", features)
#extracting only columns based on the last step
x_data <- x_data[,meansd.features]
#renaming x_data
names(x_data) <- features[meansd.features]
#--------------------
#updating names of y_data and activities and subject data
y_data[, 1] <- activities[y_data[, 1], 2]
names(y_data) <- "activity"
names(subject_data) <- "subject"

#---------------------
#binding data together
combined.data <- cbind(x_data, y_data, subject_data)

#a new dataset with averages
library(plyr)
tidy.data <- ddply(combined.data, .(subject, activity), function(x) colMeans(x[, 1:66]))
#write the new dataset to the file
write.table(tidy.data, "tidydata.txt", row.name=FALSE)







