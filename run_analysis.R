## creating the Training File
train.data <- read.table("./train/X_train.txt", sep = "" , header = F,stringsAsFactors= F)
train.subject <-read.table("./train/subject_train.txt", sep = "" , header = F,stringsAsFactors= F)
train.y <-read.table("./train/y_train.txt", sep = "" , header = F,stringsAsFactors= F)
train=cbind(train.data,train.subject,train.y)



## creating the Test File
test.data <- read.table("./test/X_test.txt", sep = "" , header = F,stringsAsFactors= F)
test.subject <-read.table("./test/subject_test.txt", sep = "" , header = F,stringsAsFactors= F)
test.y <-read.table("./test/y_test.txt", sep = "" , header = F,stringsAsFactors= F)
test=cbind(test.data,test.subject,test.y)


## creating the features vector without hyphens & braces in variable names
variable.names<-read.table("features.txt", sep = "" , header = F,stringsAsFactors= F)
variable.names$V1<-NULL
variable.names <- gsub("[-]", "",variable.names[,1])
variable.names <- gsub("[()]","",variable.names)


## creating a single data file with variable names from feature list and adding a column for activity name

data = rbind(train,test)
colnames(data)[1:561]<-variable.names
colnames(data)[562]<-"subject"
colnames(data)[563]<-"activity"



## Extracts only the measurements on the mean and standard deviation for each measurement.

data.sub.mean =data[ , grepl( "mean", ignore.case = T,names( data ) ) ]
data.sub.sd =data[ , grepl( "std", ignore.case = T,names( data ) ) ]
data.sub.gen=data[562:563]
data.sub=cbind(data.sub.gen,data.sub.mean,data.sub.sd)

## Uses descriptive activity names to name the activities in the data set and 
## Appropriately labels the data set with descriptive activity names. 

activity.code<-read.table("activity_labels.txt", sep = "" , header = F,stringsAsFactors= F)
##install.packages("qdapTools")
library(qdapTools)
data.sub$activity <- lookup(data.sub[,2], activity.code[, 1:2])


## Creates a second, independent tidy data set with the average of 
## each variable for each activity and each subject. 

suppressWarnings(tidydata.sub.mean<-aggregate(data.sub, by=list(data.sub$subject,data.sub$activity),FUN=mean,na.rm=TRUE))
tidydata.sub.mean$subject<-NULL
tidydata.sub.mean$activity<-NULL
colnames(tidydata.sub.mean)[1]<-"subject"
colnames(tidydata.sub.mean)[2]<-"activity"
library(xlsx)
write.xlsx(tidydata.sub.mean,"tidydata.sub.mean.xlsx")



