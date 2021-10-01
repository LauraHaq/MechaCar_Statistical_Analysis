# Linear Regression to Predict MPG

#Load dplyr package
library(dplyr)

#Read and import data
Mecha_data <-read.csv('Resources/MechaCar_mpg.csv',stringsAsFactors = F) 

#Linear Regression
lm(mpg ~ vehicle_length + vehicle_weight + spoiler_angle + ground_clearance +AWD + mpg, data = Mecha_data)
summary(lm(mpg ~ vehicle_length + vehicle_weight + spoiler_angle + ground_clearance +AWD + mpg, data = Mecha_data))

# Create Visualizations for the Trip Analysis
#Read and import data
coil_data <- read.csv('Resources/Suspension_Coil.csv')

#Create total_summary dataframe
total_summary <- coil_data %>% summarize(Mean=mean(PSI), Median=median(PSI), Variance=var(PSI), SD=sd(PSI))

#create lot_summary dataframe
lot_summary <- coil_data %>% group_by(Manufacturing_Lot) %>% summarize(Mean=mean(PSI), Median=median(PSI), Variance=var(PSI), SD=sd(PSI))

# T Tests on Suspension Coils PSI compared to average PSI = 1500
t.test(coil_data$PSI, mu=1500)

# T Tests PSI on subsets of manufacturing lots compared to average PSI of 1500.
t.test(subset(coil_data, Manufacturing_Lot== "Lot1")$PSI, mu=1500)
t.test(subset(coil_data, Manufacturing_Lot== "Lot2")$PSI, mu=1500)
t.test(subset(coil_data, Manufacturing_Lot== "Lot3")$PSI, mu=1500)

#library(tidyverse)
#plt <- ggplot(coil_data, aes(x=Manufacturing_Lot, y=PSI))
#plt+ geom_point()

