# MechaCar_Statistical_Analysis

## Overview
The objective of this project is to give guidance to a car manufacturering team to overcome production challenges. My analytics team was given production data to conduct statitical tests using R Studio to find correlations between car specifications, create visual tools that compare manufacturing lots' production and to give additional related future analysis. 
### Resources:
  - Tools
    - R Studio version 1.4.1717
    - R dplyr library
  - Data
    - [MechaCar_mpg.csv](https://github.com/LauraHaq/MechaCar_Statistical_Analysis/blob/main/Resources/MechaCar_mpg.csv)
    - [Suspinsion_Coil.csv](https://github.com/LauraHaq/MechaCar_Statistical_Analysis/blob/main/Resources/Suspension_Coil.csv)
    
    
## Linear Regression to Predict MPG
#### Image
![photo](https://github.com/LauraHaq/MechaCar_Statistical_Analysis/blob/main/images/linear_regression_summary.png)
#### - Summary
The non-random aomunt of variance to the mpg values are the variables "vehicle_weight" and "awd". These variables have low p-values of 0.0776 and 0.1852 respectively. This discovery of their relationship with "mpg" will lead to further analysis of possible predictability of mpg with given data of these variables. Also, "spoiler_angle" is considered non-random with 0.3069 p-value. The linear model is not considered a slope of zero because the p-value of the multiple linear regression is 5.35-11 which is low but still above zero producing a very slight upward slope. The r-value from summary is 0.71489 meaning the mpg can be predicted within a certain range 71% of the time.


## Summary Statistics on Suspension Coils
#### Image of all Total Summary of all lots:  
![photo](https://github.com/LauraHaq/MechaCar_Statistical_Analysis/blob/main/images/total_summary.png)

#### - Summary
The expectation of MechaCar is that the suspension coils design specifications must not have a variance greater than 100 psi (pounds per inch). The above test shows that variance of 62.29356 meets this expectation. However, to fully analyze the company all lots will need to be tested individually.

#### Image of each lot:  
![photo](https://github.com/LauraHaq/MechaCar_Statistical_Analysis/blob/main/images/lot_summary_df.png)

#### - Summary
Further analysis proved to be an important step into the right direction to discover that lot 3's variance exceeds 100 psi with 170.2861224. This lot does not meet expecation and can learn a lot from Lot 1. The test on Lot1 produced a variance of only 0.9795918 and Lot2 produced 7.4963878 both well below the excpecation of 100.

#### Scatter plot of all lots
![photo](https://github.com/LauraHaq/MechaCar_Statistical_Analysis/blob/main/images/PSIvLotscatterplot.png)

## T-Tests on Suspension Coils
#### - Single T-test of MechaCar:
![photo](https://github.com/LauraHaq/MechaCar_Statistical_Analysis/blob/main/images/Single_T_Test_PSI.png)

#### - Summary
With a significance level of 0.05 a T-test on all of MechaCar produces a p-value of 0.06028 that would seem as if all of MechaCar is normal and the p-value is not low enough to reject the null hypthosis.

#### T-test of each lot:
![photo](https://github.com/LauraHaq/MechaCar_Statistical_Analysis/blob/main/images/T_Test_by_Lot.png)

#### - Summary
A T-test on all lots tells a different story with Lot1 p-value equal to 1 and Lot2 equal to 0.6072. However, Lot3's p-value is equal to 0.04168 and with this information we discovered further that Lot3 needs to addressed for the progress of the company as it is not normal.

## Study Design: MechaCar vs Competition
Further analysis of MechaCar car performace to compare to its competitors will provide additional information of how the MechaCar using statistical testing on metrics specifically related to consumer interests. For example, I would like to test using the safety 5-star rating of Mechacars. I can conduct a correlation analysis on safety ratings (Oridinal Data) and frequency of car sales to families for family size cars. If I were to assume that the test proves to have a correlation and also recieve family sized car sales from competitors and conduct chi-squared for frequency of sales between companies. I can test that MechaCar outperforms a competitor into sales of family sized cars for family purchases or does not outperform its competitor. If I was to find that there is a correlation between safety and family car purchases to family buyers and MechaCar does not outperform their competitor I would be able to provide written statistical analysis to MechaCar to improve their safety standards.
