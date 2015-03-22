library("dplyr", lib.loc="~/R/win-library/3.1")

#training set
set1 = read.table("./data/UCI HAR Dataset/train/X_train.txt", header=F)
subjtrain = read.table("./data/UCI HAR Dataset/train/subject_train.txt", header=F)
colnames(subjtrain)= "Subject"
activty_train = read.table("./data/UCI HAR Dataset/train/y_train.txt", header=F)
colnames(activty_train)= "Activity"
set11 = cbind(subjtrain, activty_train, set1)

#testset
set2 = read.table("./data/UCI HAR Dataset/test/X_test.txt", header=F)
subjtest = read.table("./data/UCI HAR Dataset/test/subject_test.txt", header=F)
colnames(subjtest)= "Subject"
activity_test = read.table("./data/UCI HAR Dataset/test/y_test.txt", header=F)
colnames(activity_test) = "Activity"
set22 = cbind(subjtest, activity_test, set2)

#merge
set3 = merge(set11, set22,all=T)

#step2 get cols for mean and std
nam = read.csv("./data/UCI HAR Dataset/features.txt", header=T)
x =  grep(" ",nam[,1])
dfs = nam[x,1]
x =  grep("mean\\(\\)|std",dfs)
y = x + 2
y = c(1, 2, y)
n = set3[,y]


#step3 descriptive names
x =  grep("mean\\(\\)|std",nam[,1])
dfs = nam[x,1]
z = data.frame("Subject")
colnames(z) = "x"
y = data.frame("Activity")
colnames(y) = "x"
a = data.frame(dfs)
colnames(a) = "x"
dfs = rbind(z, y, a)
dfs = dfs[,1]
colnames(n) = dfs


#step4 descriptive variable names
dfs = gsub("Body", " Body ", dfs)
dfs = gsub("Acc", "Acceleration ", dfs)
dfs = gsub(" tGravityAcceleration", "Gravity Acceleration", dfs)
dfs = gsub("Mag", " Magnatude ", dfs)
dfs = gsub("Gyro", "Gyroscope", dfs)
dfs = gsub("[0-9]", "", dfs)
dfs = gsub(" f ", "", dfs)
dfs = gsub("\\(\\)", "", dfs)
dfs = gsub("\\-", " ", dfs)
dfs = gsub("  ", " ", dfs)
dfs = gsub(" t ", "", dfs)
dfs = gsub("mean", "Average", dfs)
dfs = gsub("std", "Standard Deviation", dfs)
dfs = gsub(" ", ".", dfs)
valid_column_names <- make.names(names=dfs, unique=TRUE, allow_ = TRUE)
colnames(n) = valid_column_names

n$Activity[n$Activity == 1] = "WALKING"
n$Activity[n$Activity == 2] = "WALKING_UPSTAIRS"
n$Activity[n$Activity == 3] = "WALKING_DOWNSTAIRS"
n$Activity[n$Activity == 4] = "SITTING"
n$Activity[n$Activity == 5] = "STANDING"
n$Activity[n$Activity == 6] = "LAYING"

#average of all columns
result = (n %>% group_by(Subject, Activity) %>% summarise_each(funs(mean)))

#write result
write.table(result, row.name=F, file="result.txt")

