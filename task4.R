#We use the package containing the method for calculating the standard deviation

library(EnvStats)
group2 <- read.csv("Datasets/Group2.csv", sep="")

ResultsGroup2 <- as.vector(group2[[1]], mode = "double")

ExpectedVariance<- `^`(20,2)
result <- varTest(ResultsGroup2 , alternative = "two.sided" , sigma.squared = ExpectedVariance, conf.level = 0.95, data.name = NULL)
print(result)

cat(paste("Obtained standard deviation:" , sqrt(result$estimate)))