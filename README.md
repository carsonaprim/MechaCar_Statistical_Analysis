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

## T-Tests ![Screen Shot 2023-01-27 at 10 21 46 AM](https://user-images.githubusercontent.com/111708233/215124569-dd107a71-e2da-4f78-89a7-66c0f27d5bc3.png)
on Suspension Coils
![Screen Shot 2023-01-27 at 10 28 04 AM](https://user-images.githubusercontent.com/111708233/215124593-2f7c60ba-ccc7-4256-a324-ca0d620206dc.png)

We can tell here from the p-values that the main t-test is going to fail to reject for any significance under .05 given it is .060 (rounded). Yet when we look at the individual lots, the first two lots are extremely high in p-value, making their confidence interval extremely small and close to the 1500 we tested, yet the third lot is the only one with a p-value under the assumed desired .05, and has a range nearly 5 times the size of the next largest (lot 2). Clearly given the variance and the t-test, lot 3 is the problem here.

## Study Design: MechaCar vs Competition

Given the current state of the world, we are going to test the MechaCar's fuel efficiency, both city and highway, against the precious and "extremely efficient" Toyota Prius and how the fuel efficiency is effected by horsepower. The null hypothesis is that if you make the mechacar have less horsepower and for this example also the prius, then it wont positively affect the fuel efficiency of either or both cars. I believe we could use a variety of linear regression models for our test vehicles, with our lighter horsepower mechacar and prius each having city and highway regression models, and if we have varying levels of the study, then even more will be necessary. We would need to know the horsepower of the vehicles that we are testing against each other, as well as the new horsepower of our weaker "test" vehicles, and the resulting city and highway mpg of each with at least what i will set as a 500 mile minimum for each.

