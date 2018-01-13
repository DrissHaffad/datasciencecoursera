# Getting and Cleaning Data Projet

In This project we will see how to manipulate Data to go From Separate Text Files to Tidy Data

## Getting Started

These instructions will get you a copy of the project up and running on your local machine for development and testing purposes. See deployment for notes on how to deploy the project on a live system.

### Prerequisites

You will Need to install and load the reshape2 Package

```
install.packages("reshape2")
library(reshape2)
```

### Getting the Data that works with the Script

First of All The Data Need is Here [DATA](https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip)

Unzip the Data and Be sure to keep the same structure as the Zip File, and Make your WD the Directory containing directly thoses files :


```
Working Directory\test\Inertial Signals\body_acc_x_test.txt
Working Directory\test\Inertial Signals\body_acc_y_test.txt
Working Directory\test\Inertial Signals\body_acc_z_test.txt
Working Directory\test\Inertial Signals\body_gyro_x_test.txt
Working Directory\test\Inertial Signals\body_gyro_y_test.txt
Working Directory\test\Inertial Signals\body_gyro_z_test.txt
Working Directory\test\Inertial Signals\total_acc_x_test.txt
Working Directory\test\Inertial Signals\total_acc_y_test.txt
Working Directory\test\Inertial Signals\total_acc_z_test.txt
Working Directory\test\subject_test.txt
Working Directory\test\X_test.txt
Working Directory\test\y_test.txt
Working Directory\train\Inertial Signals\body_acc_x_train.txt
Working Directory\train\Inertial Signals\body_acc_y_train.txt
Working Directory\train\Inertial Signals\body_acc_z_train.txt
Working Directory\train\Inertial Signals\body_gyro_x_train.txt
Working Directory\train\Inertial Signals\body_gyro_y_train.txt
Working Directory\train\Inertial Signals\body_gyro_z_train.txt
Working Directory\train\Inertial Signals\total_acc_x_train.txt
Working Directory\train\Inertial Signals\total_acc_y_train.txt
Working Directory\train\Inertial Signals\total_acc_z_train.txt
Working Directory\train\subject_train.txt
Working Directory\train\X_train.txt
Working Directory\train\y_train.txt
Working Directory\activity_labels.txt
Working Directory\features.txt
Working Directory\features_info.txt
Working Directory\README.txt
```

The Data Structure is Important In order to Make the Script Work

## CodeBook

For all the variables see the [CodeBook](https://github.com/DrissHaffad/datasciencecoursera/blob/master/CodeBook.md)

## Authors

* **Driss Work** - *Initial work* - [DrissHaffad](https://github.com/DrissHaffad)

## Acknowledgments

* This MD file was created using the beautiful Template from [PurpleBooth](https://gist.github.com/PurpleBooth)
