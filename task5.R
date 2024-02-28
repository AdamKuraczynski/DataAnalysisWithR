group1 <- read.csv("Datasets/Group1.csv", sep="")
group2 <- read.csv("Datasets/Group2.csv", sep="")


ResultsGroup1 <- as.vector(group1[[1]], mode = "double")
ResultsGroup2 <- as.vector(group2[[1]], mode = "double")


t.test(ResultsGroup1, ResultsGroup2, alternative = "greater")