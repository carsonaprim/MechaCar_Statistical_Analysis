# MechaCar_Statistical_Analysis

## Linear Regression to Predict MPG
![Screen Shot 2023-01-26 at 9 22 19 PM](https://user-images.githubusercontent.com/111708233/214997527-986de4bd-cef5-4cf1-be55-1c99f4cf15d5.png)
- Which variables/coefficients provided a non-random amount of variance to the mpg values in the dataset?
The variables that provided a non-random amount of variance are vehicle length and ground clearance.
- Is the slope of the linear model considered to be zero? Why or why not?
No it is not, as a low p value is an indicator that the slope is not zero.
- Does this linear model predict mpg of MechaCar prototypes effectively? Why or why not?
Yes, as the R squared in this example is approximately .71, meaning generally 71% of data would be statistically relevant to our line of regression. A higher r squared means the data fits the regression model better, and anything really over 50 percent is relevant.

## Summary Statistics on Suspension Coils
![Screen Shot 2023-01-27 at 10 08 54 AM](https://user-images.githubusercontent.com/111708233/215120723-d06a88a3-bafa-4ebb-856e-d51b6c65d891.png)
![Screen Shot 2023-01-27 at 10 11 45 AM](https://user-images.githubusercontent.com/111708233/215120741-7a630431-292f-44a4-aa61-eb261e566b54.png)
- The design specifications for the MechaCar suspension coils dictate that the variance of the suspension coils must not exceed 100 pounds per square inch. Does the current manufacturing data meet this desing specification for all manufacturing lots in total and each lot individually? why or why not?
Initially yes, as we see the variance of the total summary is less than 100, it is 62. But when taking a further look and testing each lot, we can see that lot 3 has a variance significantly over 100, at 170. Meaning lot 3 does not meet the design specifications for the MechaCar suspension coils.
