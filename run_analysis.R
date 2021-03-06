library(reshape2)

filename <- "getdata_dataset.zip"

## Download and unzip the dataset:
if (!file.exists(filename)){
  fileURL <- "https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip"
  download.file(fileURL, filename, method="curl")
}  
if (!file.exists("UCI HAR Dataset")) { 
  unzip(filename) 
}

# Load activity labels + features
activityLabels <- read.table("UCI HAR Dataset/activity_labels.txt")
activityLabels[,2] <- as.character(activityLabels[,2])
features <- read.table("UCI HAR Dataset/features.txt")
features[,2] <- as.character(features[,2])

# Extract only the data on mean and standard deviation. Objective 2
featuresWanted <- grep(".*mean.*|.*std.*", features[,2])
featuresWanted.names <- features[featuresWanted,2]
featuresWanted.names <- gsub('-mean', 'Mean', featuresWanted.names)
featuresWanted.names <- gsub('-std', 'Std', featuresWanted.names)
featuresWanted.names <- gsub('[-()]', '', featuresWanted.names)

# Load the datasets
train <- read.table("UCI HAR Dataset/train/X_train.txt")[featuresWanted]
trainActivities <- read.table("UCI HAR Dataset/train/Y_train.txt")
trainSubjects <- read.table("UCI HAR Dataset/train/subject_train.txt")
train <- cbind(trainSubjects, trainActivities, train)

test <- read.table("UCI HAR Dataset/test/X_test.txt")[featuresWanted]
testActivities <- read.table("UCI HAR Dataset/test/Y_test.txt")
testSubjects <- read.table("UCI HAR Dataset/test/subject_test.txt")
test <- cbind(testSubjects, testActivities, test)

# merge datasets and add labels. Objective 1
allData <- rbind(train, test)
colnames(allData) <- c("subject", "activity", featuresWanted.names)


# turn activities & subjects into factors
allData$activity <- factor(allData$activity, levels = activityLabels[,1], labels = activityLabels[,2])
allData$subject <- as.factor(allData$subject)

# Use descriptive activity names to name the activities in the data set. Objective 3
allData.melted <- melt(allData, id = c("subject", "activity"))
allData.mean <- dcast(allData.melted, subject + activity ~ variable, mean)

# Appropriately labels the data set with descriptive variable names. Objective 4
names(allData.mean)<-gsub("^t", "Time", names(allData.mean))
names(allData.mean)<-gsub("^f", "Frequency", names(allData.mean))
names(allData.mean)<-gsub("Acc", "Accelerometer", names(allData.mean))
names(allData.mean)<-gsub("Gyro", "Gyroscope", names(allData.mean))
names(allData.mean)<-gsub("Mag", "Magnitude", names(allData.mean))
names(allData.mean)<-gsub("BodyBody", "Body", names(allData.mean))

# Create an independent tidy data set 'tidy_data.txt' with the average of each variable. Objective 5
write.table(allData.mean, "tidy_data.txt", row.names = FALSE, quote = FALSE)