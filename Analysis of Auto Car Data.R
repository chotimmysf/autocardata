# Auto Car Data

# Loading Data

Auto = read.csv("Auto.csv", header=TRUE, na.strings="?")
Auto = na.omit(Auto)
NewAuto=Auto[1:392,]

#Display Ranges in Console
range(Auto$mpg) #Output: 9.0 46.6
range(Auto$cylinders)
range(Auto$displacement) 
range(Auto$horsepower) 
range(Auto$weight)
range(Auto$acceleration) 
range(Auto$year) 
range(Auto$origin) 

# Improvement: Use one range function to calculate ranges of all variables

#Obtain Mean & SD of each independent variable
mean(Auto$mpg) #Output: 23.44592
sd(Auto$mpg)
mean(Auto$cylinders)
sd(Auto$cylinders) 
mean(Auto$displacement)
sd(Auto$displacement) 
mean(Auto$horsepower) 
sd(Auto$horsepower) 
mean(Auto$weight) 
sd(Auto$weight) 
mean(Auto$acceleration) 
sd(Auto$acceleration)
mean(Auto$year) 
sd(Auto$year) 
mean(Auto$origin) 
sd(Auto$origin)

# Improvement: Use one function for each mean & SD to calculate 
# mean & SD of all variables

#Range, Mean, SD after removing 10th to 85th observations

#First, we remove the observations
ModifiedData <- Auto[-c(10:85),]

#Change name to numeric factors
ModifiedData$name = as.numeric(as.factor(ModifiedData$name))

#Calculate range of remaining observations
apply(ModifiedData, 2, range)

#Calculate mean
colMeans(ModifiedData)

#calculate SD
apply(ModifiedData, 2, sd)

#Display findings by generating plots

#Plot for mpg & horsepower
plot(Auto$mpg,Auto$horsepower)

# There is a moderately strong negative association between mpg and horsepower,
# and there seems to be outliers when mpg > 40.

#Box plot for mpg & acceleration
boxplot(Auto$mpg,Auto$acceleration)

# There are about 8 outliers in the acceleration boxplot.

# Pairs plot for all predictors
pairs(ModifiedData)

# There is a strong positive association between horsepower and weight.
# However, most other plots show either a moderately strong negative
# association like the mpg-horsepower plot, or no association since
# those plots have data points scattered all over the place.