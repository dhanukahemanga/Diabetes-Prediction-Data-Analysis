
# Diabetes Prediction Data Analysis using R

# 1. Load Dataset and Libraries
library(ggplot2)
library(dplyr)
data <- read.csv("diabetes_prediction_dataset.csv", stringsAsFactors = TRUE)

# 2. Descriptive Statistics
# Age
summary(data$age)
mean(data$age)
median(data$age)
sd(data$age)
var(data$age)
range(data$age)
quantile(data$age)

# BMI
summary(data$bmi)
mean(data$bmi)
median(data$bmi)
sd(data$bmi)
var(data$bmi)
range(data$bmi)
quantile(data$bmi)

# HbA1c Level
summary(data$HbA1c_level)
mean(data$HbA1c_level)
median(data$HbA1c_level)
sd(data$HbA1c_level)
var(data$HbA1c_level)
range(data$HbA1c_level)
quantile(data$HbA1c_level)

# Blood Glucose Level
summary(data$blood_glucose_level)
mean(data$blood_glucose_level)
median(data$blood_glucose_level)
sd(data$blood_glucose_level)
var(data$blood_glucose_level)
range(data$blood_glucose_level)
quantile(data$blood_glucose_level)

# 3. Data Visualizations

# Gender Distribution
ggplot(data, aes(x = gender)) + 
  geom_bar(fill = "skyblue") + 
  ggtitle("Distribution of Patients by Gender")

# Hypertension Distribution
ggplot(data, aes(x = factor(hypertension))) + 
  geom_bar(fill = "salmon") + 
  ggtitle("Distribution of Hypertension Status")

# Heart Disease Distribution
ggplot(data, aes(x = factor(heart_disease))) + 
  geom_bar(fill = "lightgreen") + 
  ggtitle("Distribution of Heart Disease Status")

# Smoking History Distribution
ggplot(data, aes(x = smoking_history)) + 
  geom_bar(fill = "plum") + 
  ggtitle("Distribution of Smoking History")

# Diabetes Status Distribution
ggplot(data, aes(x = factor(diabetes))) + 
  geom_bar(fill = "orange") + 
  ggtitle("Distribution of Diabetes Status")

# 4. Grouped Bar Charts

# Smoking History by Gender
ggplot(data, aes(x = smoking_history, fill = gender)) +
  geom_bar(position = "dodge") +
  ggtitle("Smoking History by Gender")

# Hypertension by Gender
ggplot(data, aes(x = factor(hypertension), fill = gender)) +
  geom_bar(position = "dodge") +
  ggtitle("Hypertension Status by Gender")

# Heart Disease by Gender
ggplot(data, aes(x = factor(heart_disease), fill = gender)) +
  geom_bar(position = "dodge") +
  ggtitle("Heart Disease Status by Gender")

#Diabetes by Gender
ggplot(data, aes(x = factor(diabetes), fill = gender)) +
  geom_bar(position = "dodge") +
  ggtitle("Diabetes Status by Gender")

# 5. Histograms

# Age
ggplot(data, aes(x = age)) + 
  geom_histogram(binwidth = 5, fill = "blue") + 
  ggtitle("Age Distribution")

# BMI
ggplot(data, aes(x = bmi)) + 
  geom_histogram(binwidth = 2, fill = "red") + 
  ggtitle("BMI Distribution")

# HbA1c
ggplot(data, aes(x = HbA1c_level)) + 
  geom_histogram(binwidth = 0.5, fill = "green") + 
  ggtitle("HbA1c Level Distribution")

# Blood Glucose
ggplot(data, aes(x = blood_glucose_level)) + 
  geom_histogram(binwidth = 10, fill = "purple") + 
  ggtitle("Blood Glucose Level Distribution")

# 6. Boxplots by Categories

# Boxplots by Gender
ggplot(data, aes(x = gender, y = age)) + geom_boxplot()
ggplot(data, aes(x = gender, y = bmi)) + geom_boxplot()
ggplot(data, aes(x = gender, y = HbA1c_level)) + geom_boxplot()
ggplot(data, aes(x = gender, y = blood_glucose_level)) + geom_boxplot()

# Boxplots by Smoking History
ggplot(data, aes(x = smoking_history, y = age)) + geom_boxplot()
ggplot(data, aes(x = smoking_history, y = bmi)) + geom_boxplot()
ggplot(data, aes(x = smoking_history, y = HbA1c_level)) + geom_boxplot()
ggplot(data, aes(x = smoking_history, y = blood_glucose_level)) + geom_boxplot()

# Boxplots by Hypertension
ggplot(data, aes(x = factor(hypertension), y = age)) + geom_boxplot()
ggplot(data, aes(x = factor(hypertension), y = bmi)) + geom_boxplot()
ggplot(data, aes(x = factor(hypertension), y = HbA1c_level)) + geom_boxplot()
ggplot(data, aes(x = factor(hypertension), y = blood_glucose_level)) + geom_boxplot()

# Boxplots by Diabetes
ggplot(data, aes(x = factor(diabetes), y = age)) + geom_boxplot()
ggplot(data, aes(x = factor(diabetes), y = bmi)) + geom_boxplot()
ggplot(data, aes(x = factor(diabetes), y = HbA1c_level)) + geom_boxplot()
ggplot(data, aes(x = factor(diabetes), y = blood_glucose_level)) + geom_boxplot()

# Boxplots by Heart Disease
ggplot(data, aes(x = factor(heart_disease), y = age)) + geom_boxplot()
ggplot(data, aes(x = factor(heart_disease), y = bmi)) + geom_boxplot()
ggplot(data, aes(x = factor(heart_disease), y = HbA1c_level)) + geom_boxplot()
ggplot(data, aes(x = factor(heart_disease), y = blood_glucose_level)) + geom_boxplot()
