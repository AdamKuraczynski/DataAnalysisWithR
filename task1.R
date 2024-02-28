# Kurtosis
install.packages("moments")
library(moments)

# classic skewness coefficient
install.packages("e1071")
library(e1071)

#Downloading data files
Group1 <- read.csv("Datasets/Group1.csv", sep="")
Group2 <- read.csv("Datasets/Group2.csv", sep="")

#Creating a vector of results
ResultsGroup1 <- as.vector(Group1[[1]], mode = "double")
ResultsGroup2 <- as.vector(Group2[[1]], mode = "double")

#Sum of scores for Group 1 and 2
Sum1 <- sum(ResultsGroup1)
Sum2 <- sum(ResultsGroup2)

#Number of elements in the vector
NumberElements1 <- length(ResultsGroup1)
NumberElements2 <- length(ResultsGroup2)

#1. MEASURES OF LOCATION

# Mean
Mean1 <- Sum1/ NumberElements1
Mean2 <- Sum2/ NumberElements2

# Median
Median1 <- median(ResultsGroup1)
Median2 <- median(ResultsGroup2)

# Mode
Mode_Function <- function(x) {
  ux <- unique(x)
  ux[which.max(tabulate(match(x, ux)))]
}
Mode1 <- Mode_Function(ResultsGroup1)
Mode2 <- Mode_Function(ResultsGroup2)

# 1st quartile # using unname to convert the vector to result
Quartile1Group1 <- unname(quantile(ResultsGroup1,0.25))
Quartile1Group2 <- unname(quantile(ResultsGroup2,0.25))

# 3rd quartile
Quartile3Group1 <- unname(quantile(ResultsGroup1,0.75))
Quartile3Group2 <- unname(quantile(ResultsGroup2,0.75))

#2 CLASSIC DISPERSION MEASURES

# Range of scores in the sample (max(x) - min(x))
ScoreRange1 <- max(ResultsGroup1) - min(ResultsGroup1)
ScoreRange2 <- max(ResultsGroup2) - min(ResultsGroup2)

# Biased variance
BiasedVariance1 <- var(ResultsGroup1)
BiasedVariance2 <- var(ResultsGroup2)

# Standard deviation from biased variance
BiasedStandardDeviation1 <- sqrt(BiasedVariance1)
BiasedStandardDeviation2 <- sqrt(BiasedVariance2)

# Unbiased variance
Variance_Function_Unbiased <- function(x) {
  mean((x - mean(x))^2)
}
UnbiasedVariance1 <- Variance_Function_Unbiased(ResultsGroup1)
UnbiasedVariance2 <- Variance_Function_Unbiased(ResultsGroup2)

# Standard deviation from unbiased variance
UnbiasedStandardDeviation1 <- sqrt(UnbiasedVariance1)
UnbiasedStandardDeviation2 <- sqrt(UnbiasedVariance2)

# Classic coefficient of variation
ClassicCoefficientVariation1 <- (UnbiasedStandardDeviation1 / Mean1) * 100
ClassicCoefficientVariation2 <- (UnbiasedStandardDeviation2 / Mean2) * 100

# Classic variability interval
ClassicLowerRange1 <- Mean1 - UnbiasedStandardDeviation1
ClassicUpperRange1 <- Mean1 + UnbiasedStandardDeviation1
cat("Classic variability interval for Group 1 is: 
    [", round(ClassicLowerRange1, 2), ", ", round(ClassicUpperRange1, 2), "].")

ClassicLowerRange2 <- Mean2 - UnbiasedStandardDeviation2
ClassicUpperRange2 <- Mean2 + UnbiasedStandardDeviation2
cat("Classic variability interval for Group 2 is: 
    [", round(ClassicLowerRange2, 2), ", ", round(ClassicUpperRange2, 2), "].")

#3 POSITIONAL DISPERSION MEASURES

# Interquartile range
InterquartileRange1 <- Quartile3Group1 - Quartile1Group1
InterquartileRange2 <- Quartile3Group2 - Quartile1Group2

# Quartile deviation
QuartileDeviation1 <- InterquartileRange1/2
QuartileDeviation2 <- InterquartileRange2/2

# Positional coefficient of variation
PositionalCoefficientVariation1 <- (QuartileDeviation1/Median1) * 100
PositionalCoefficientVariation2 <- (QuartileDeviation2/Median2) * 100

# Positional variability interval
PositionalLowerRange1 <- Median1 - QuartileDeviation1
PositionalUpperRange1 <- Median1 + QuartileDeviation1
cat("Positional variability interval for Group 1 is: 
    [", round(PositionalLowerRange1, 2), ", ", round(PositionalUpperRange1, 2), "].")

PositionalLowerRange2 <- Median2 - QuartileDeviation2
PositionalUpperRange2 <- Median2 + QuartileDeviation2
cat("Positional variability interval for Group 2 is: 
    [", round(PositionalLowerRange2, 2), ", ", round(PositionalUpperRange2, 2), "].")

#4 ASYMMETRY MEASURES

# Classic skewness coefficient
ClassicSkewnessCoefficient1 <- skewness(ResultsGroup1)
ClassicSkewnessCoefficient2 <- skewness(ResultsGroup2)

# Positional skewness coefficient
PositionalSkewnessCoefficient1 <- ((Quartile3Group1 + Quartile1Group1) - 2 * Median1)/(Quartile3Group1 - Quartile1Group1)
PositionalSkewnessCoefficient2 <- ((Quartile3Group2 + Quartile1Group2) - 2 * Median2)/(Quartile3Group2 - Quartile1Group2)

#5 CONCENTRATION MEASURES

# Kurtosis
Kurtosis1 <- kurtosis(ResultsGroup1)
Kurtosis2 <- kurtosis(ResultsGroup2)

#6 GROUPED FREQUENCIES

# Minimum
Minimum1 <- min(ResultsGroup1)
Minimum2 <- min(ResultsGroup2)

# Maximum
Maximum1 <- max(ResultsGroup1)
Maximum2 <- max(ResultsGroup2)

# Difference
DifferenceMaxMin1 <- Maximum1 - Minimum1
DifferenceMaxMin2 <- Maximum2 - Minimum2

# Width of the class interval // standard number of class intervals eg. 5, 10, 20..
ClassIntervalWidth1 <- DifferenceMaxMin1/ 5
ClassIntervalWidth2 <- DifferenceMaxMin2/ 5

# Intersection points
IntersectionPoints1 = seq(Minimum1, Maximum1, by=ClassIntervalWidth1)
IntersectionPoints2 = seq(Minimum2, Maximum2, by=ClassIntervalWidth2)

# Intervals
Intervals1 <- cut(ResultsGroup1, IntersectionPoints1, right = FALSE, include.lowest = TRUE)
Intervals2 <- cut(ResultsGroup2, IntersectionPoints2, right = FALSE, include.lowest = TRUE)

# Grouped frequencies
GroupedFrequencies1 <- table(Intervals1)
GroupedFrequencies2 <- table(Intervals2)

# Histograms
Histogram1 = hist(ResultsGroup1, breaks = IntersectionPoints1, col = "green", main = "Histogram for Group 1", xlab = "scores", ylab = "Number of students", axes = FALSE)
axis(2)
axis(1, at = seq(Minimum1, Maximum1, by=ClassIntervalWidth1))
Histogram2 = hist(ResultsGroup2, breaks = IntersectionPoints2, col = "blue", main = "Histogram for Group 2", xlab = "scores", ylab = "Number of students", axes = FALSE)
axis(2)
axis(1, at = seq(Minimum2, Maximum2, by=ClassIntervalWidth2))