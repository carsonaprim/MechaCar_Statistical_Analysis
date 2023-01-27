# Use the library() function to load the dplyr package.
library(dplyr)

# Import and read in the MechaCar_mpg.csv file as a dataframe.
MechaCarMpg <- read.csv(file="../Starter_Code/MechaCar_mpg.csv",check.names = F,stringsAsFactors = F)

# Perform linear regression using the lm() function. In the lm() function, pass in all six variables (i.e., columns), and add the dataframe you created in Step 4 as the data parameter.
lm(mpg ~ vehicle_length + vehicle_weight + spoiler_angle + ground_clearance + AWD, data = MechaCarMpg)

# Using the summary() function, determine the p-value and the r-squared value for the linear regression model.
summary(lm(mpg ~ vehicle_length + vehicle_weight + spoiler_angle + ground_clearance + AWD, data = MechaCarMpg))

# In your MechaCarChallenge.RScript, import and read in the Suspension_Coil.csv file as a table.
SuspensionCoilTable <- read.csv(file="../Starter_Code/Suspension_Coil.csv",check.names = F,stringsAsFactors = F)

# Write an RScript that creates a total_summary dataframe using the summarize() function to get the mean, median, variance, and standard deviation of the suspension coil’s PSI column.
total_summary <- SuspensionCoilTable %>% summarize(Mean=mean(PSI),Median=median(PSI),Variance=var(PSI),StandardDeviation=sd(PSI))

# Write an RScript that creates a lot_summary dataframe using the group_by() and the summarize() functions to group each manufacturing lot by the mean, median, variance, and standard deviation of the suspension coil’s PSI column.
lot_summary <- SuspensionCoilTable %>% group_by(Manufacturing_Lot) %>% summarize(Mean=mean(PSI),Median=median(PSI),Variance=var(PSI),StandardDeviation=sd(PSI))

# In your MechaCarChallenge.RScript, write an RScript using the t.test() function to determine if the PSI across all manufacturing lots is statistically different from the population mean of 1,500 pounds per square inch.
t.test(SuspensionCoilTable$PSI,mu=1500)

# Next, write three more RScripts in your MechaCarChallenge.RScript using the t.test() function and its subset() argument to determine if the PSI for each manufacturing lot is statistically different from the population mean of 1,500 pounds per square inch.
# I will redefine variables to separate each lot into a separate dataframe to be able to t test each one separately

Lot_1 <- subset(SuspensionCoilTable, Manufacturing_Lot == "Lot1")
Lot_2 <- subset(SuspensionCoilTable, Manufacturing_Lot == "Lot2")
Lot_3 <- subset(SuspensionCoilTable, Manufacturing_Lot == "Lot3")

# Check the new dataframes, then t test them!!
t.test(Lot_1$PSI,mu=1500)
t.test(Lot_2$PSI,mu=1500)
t.test(Lot_3$PSI,mu=1500)

