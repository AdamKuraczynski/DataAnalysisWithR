group1 <- read.csv("Group1.csv", sep="")
ResultsGroup1 <- as.vector(group1[[1]], mode = "double")

#100-0.05=0.95

t.test(ResultsGroup1, alternative = "two.sided", mu = 55, conf.level = 0.95)