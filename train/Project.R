## Training File
train.data <- read.table("./train/X_train.txt", sep = "" , header = F,stringsAsFactors= F)
train.subject <-read.table("./train/subject_train.txt", sep = "" , header = F,stringsAsFactors= F)
train.y <-read.table("./train/y_train.txt", sep = "" , header = F,stringsAsFactors= F)