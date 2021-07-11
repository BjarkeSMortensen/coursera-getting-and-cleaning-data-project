# Load tidyverse which will be used to write the script.

library(tidyverse)


# Download and unzip data

download.file("https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip ",
              "getdata_dataset.zip",
              method="curl")

unzip("getdata_dataset.zip") 



# Get feature list

features <- read_table2("./UCI HAR Dataset/features.txt", col_names = F) %>% 
  select(X2) %>% 
  pull()



# Load, manipulate and assemble the data

x_test <- read_table2("./UCI HAR Dataset/test/x_test.txt", col_names = F)

names(x_test) <- features

x_test <- x_test %>% 
  select(contains(c("std()", "mean()")))

test_subject <- read_table2("./UCI HAR Dataset/test/subject_test.txt", col_names = F) %>% 
  rename("subject" = X1)

y_test <- read_table2("./UCI HAR Dataset/test/y_test.txt", col_names = F) %>% 
  rename("activity" = X1)

test <- bind_cols(test_subject, y_test, x_test)

features <- read_table2("./UCI HAR Dataset/features.txt", col_names = F)  %>% 
  select(X2) %>% 
  pull()

x_train <- read_table2("./UCI HAR Dataset/train/x_train.txt", col_names = F)

names(x_train) <- features

x_train <- x_train %>% 
  select(contains(c("std()", "mean()")))

y_train <- read_table2("./UCI HAR Dataset/train/y_train.txt") %>% 
  rename("activity" = X1)

train_subject <- read_table2("./UCI HAR Dataset/train/subject_train.txt") %>% 
  rename("subject" = X1)

train <- bind_cols(train_subject, y_train, x_train)

total <- bind_rows(train, test) %>% 
  mutate(activity = case_when(activity == 1 ~ "Walking",
                              activity == 2 ~ "Walking_upstairs",
                              activity == 3 ~ "Walking_downstairs",
                              activity == 4 ~ "Sitting",
                              activity == 5 ~ "Standing",
                              activity == 6 ~ "Laying"))

# Save the data in a csv file

write_csv(total, "step_4_data_set.csv")


# create a second, independent tidy data set with the average of each variable for each activity and each subject

total <- total %>% 
  pivot_longer(-c(subject, activity)) %>% 
  group_by(subject, activity, name) %>% 
  summarise(value = mean(value)) %>% 
  pivot_wider(names_from = "name",
              values_from = "value")

# save the data in a csv file

write_csv(total, "step_5_data_set.csv")
