# Code Book
This code book is used to summarise the resulting data of the course project. It provides additional information regarding the data fields, data modifications and transformation used in the analysis.

## Original Data
The original dataset is available here: [UCI HAR Dataset](http://archive.ics.uci.edu/ml/datasets/Human+Activity+Recognition+Using+Smartphones)

### Description
The experiments have been carried out with a group of 30 volunteers within an age bracket of 19-48 years. 
Each person performed six activities (WALKING, WALKING_UPSTAIRS, WALKING_DOWNSTAIRS, SITTING, STANDING, LAYING) wearing a smartphone (Samsung Galaxy S II) on the waist. Using its embedded accelerometer and gyroscope, we captured 3-axial linear acceleration and 3-axial angular velocity at a constant rate of 50Hz. The experiments have been video-recorded to label the data manually. The obtained dataset has been randomly partitioned into two sets, where 70% of the volunteers was selected for generating the training data and 30% the test data.

The sensor signals (accelerometer and gyroscope) were pre-processed by applying noise filters and then sampled in fixed-width sliding windows of 2.56 sec and 50% overlap (128 readings/window). The sensor acceleration signal, which has gravitational and body motion components, was separated using a Butterworth low-pass filter into body acceleration and gravity. The gravitational force is assumed to have only low frequency components, therefore a filter with 0.3 Hz cutoff frequency was used. From each window, a vector of features was obtained by calculating variables from the time and frequency domain.

## Tidy Data
The tidy data can be found in the tidyData.txt file in this repo.

## Data Fields

### Supporting Idintefiers
1) SubjectID
2) Activity

### Feature Names
|X|Y|Z|
|-----|-------|-------|
|  timeBodyAccelerometer-mean-X       |  timeBodyAccelerometer-mean-Y | timeBodyAccelerometer-mean-Z|
|  timeBodyAccelerometer-std-X        |  timeBodyAccelerometer-std-Y  | timeBodyAccelerometer-std-Z |
|  timeGravityAccelerometer-mean-X    |  timeGravityAccelerometer-mean-Y |    timeGravityAccelerometer-mean-Z |
|timeGravityAccelerometer-std-X  |timeGravityAccelerometer-std-Y | timeGravityAccelerometer-std-Z |          
| timeBodyAccelerometerJerk-mean-X   |timeBodyAccelerometerJerk-mean-Y    |timeBodyAccelerometerJerk-mean-Z   |      
| timeBodyAccelerometerJerk-std-X        |timeBodyAccelerometerJerk-std-Y     |timeBodyAccelerometerJerk-std-Z   |  
|timeBodyGyroscope-mean-X      |timeBodyGyroscope-mean-Y    |timeBodyGyroscope-mean-Z    |                 
|timeBodyGyroscope-std-X     |timeBodyGyroscope-std-Y    |timeBodyGyroscope-std-Z       |                  
|timeBodyGyroscopeJerk-mean-X         |timeBodyGyroscopeJerk-mean-Y    |timeBodyGyroscopeJerk-mean-Z |          
|timeBodyGyroscopeJerk-std-X     |timeBodyGyroscopeJerk-std-Y      |timeBodyGyroscopeJerk-std-Z  |     
|freqBodyAccelerometer-mean-X  |freqBodyAccelerometer-mean-Y     |freqBodyAccelerometer-mean-Z   |                
|freqBodyAccelerometer-std-X      |freqBodyAccelerometer-std-Y   |freqBodyAccelerometer-std-Z      |           
|freqBodyAccelerometerJerk-mean-X   |freqBodyAccelerometerJerk-mean-Y    |freqBodyAccelerometerJerk-mean-Z    |        
|freqBodyAccelerometerJerk-std-X   |freqBodyAccelerometerJerk-std-Y      |freqBodyAccelerometerJerk-std-Z   |     
|freqBodyGyroscope-mean-X         |freqBodyGyroscope-mean-Y      |freqBodyGyroscope-mean-Z     |             
|freqBodyGyroscope-std-X     |freqBodyGyroscope-std-Y       |freqBodyGyroscope-std-Z     |       

|Magnitude |
|----------|
|timeBodyAccelerometerMagnitude-mean     
|timeBodyAccelerometerMagnitude-std     
|timeGravityAccelerometerMagnitude-mean  
|timeGravityAccelerometerMagnitude-std   
|timeBodyAccelerometerJerkMagnitude-mean
|timeBodyAccelerometerJerkMagnitude-std  
|timeBodyGyroscopeMagnitude-mean         
|timeBodyGyroscopeMagnitude-std         
|timeBodyGyroscopeJerkMagnitude-mean     
|timeBodyGyroscopeJerkMagnitude-std      
| freqBodyAccelerometerMagnitude-mean |
|freqBodyAccelerometerMagnitude-std |
|freqBodyAccelerometerJerkMagnitude-mean |
|freqBodyAccelerometerJerkMagnitude-std |
|freqBodyGyroscopeMagnitude-mean         |
|freqBodyGyroscopeMagnitude-std          |
|freqBodyGyroscopeJerkMagnitude-mean    |
|freqBodyGyroscopeJerkMagnitude-std|


## Activity Labels

| Activity Code  | Acitivity Label | Description |
| ------------- | ------------- |--------------|
| 1  | WALKING  | Subject was walking during the test  |
| 2  | WALKING_UPSTAIRS  | Subject was walking upstairs during the test  |
| 3  | WALKING_DOWNSTAIRS  | Subject was walking downstairs during the test |
| 4  | SITTING  | Subject was sitting during the test |
| 5  | STANDING | Subject was standing during the test |
| 6  | LAYING  | Subject was laying down during the test |


