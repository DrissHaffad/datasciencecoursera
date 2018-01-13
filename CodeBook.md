## CodeBook

This code book describes the data used in this project, as well as the steps to create the resulting tidy data set.

### Overview

30 volunteers performed 6 different activities while wearing a smartphone. The smartphone captured various data about their movements.

### Overview of each file

`features.txt`: Names of the 561 features.
`activity_labels.txt`: Names and IDs for each of the 6 activities.

`X_train.txt`: 7352 observations of the 561 features, for 21 of the 30 volunteers.
`subject_train.txt`: A vector of 7352 integers, denoting the ID of the volunteer related to each of the observations in `X_train.txt`.
`y_train.txt`: A vector of 7352 integers, denoting the ID of the activity related to each of the observations in `X_train.txt`.

`X_test.txt`: 2947 observations of the 561 features, for 9 of the 30 volunteers.
`subject_test.txt`: A vector of 2947 integers, denoting the ID of the volunteer related to each of the observations in `X_test.txt`.
`y_test.txt`: A vector of 2947 integers, denoting the ID of the activity related to each of the observations in `X_test.txt`.

### Processing steps performed on the Data
1. Unzip the File into a Directory and Rename the Root Directory Keeping the Sub Directories in the Same architecture
2. Reading All the TXT Files into Data Frames 
3. Adding Appropriate Names to the DF Created
4. Creating a Logical Vector to Keep Only mean std subjectID and activity variables
5. Creating a factor with the appropriate activity name.
6. Using the reshape2 package to create the tidy Data
7. The tidy data set was output to a TXT file.
