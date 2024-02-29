# DataAnalysisWithR

This project involves analyzing exam data using the R programming language. The dataset comprises the results of an exam conducted with two groups of students, each with a distinct series of scores. The analysis aims to uncover insights into the performance of students in both groups and compare their exam results. Various statistical techniques will be employed, including measures of central tendency, measures of dispersion, skewness, kurtosis, hypothesis testing, and normality testing using the Kolmogorov-Smirnov test. Additionally, grouped frequency distributions and histograms will be constructed to visualize the empirical distributions of the exam scores.

# Details:

An exam was conducted with 2 groups of students. The exam results are presented in the form of 2 series.

**Results obtained in group 1 consisting of 35 students:**  

62.5 58 11.2 88.2 69 70.8 28.9 67.4 89.7 48.7 54.2 52.7 68.1 84 40.1 93.4 2 78.1 62.4 68 74.6 97.3 68.6 88.8 80.4 18.8 100 31.7 72.3 68.8 60.5 55.5 44.5 45.7 68.4   

**Results in group 2 consisting of 33 students:**  

64.4 33.3 34.5 40.1 31 58.1 60 100 12 30.9 32.3 82.4 15.5 80.5 74.7 50.1 73.7 61.2 43.6 49.3 38.2 23.1 35.8 20.1 69.2 30.1 41.3 83.4 79.7 28.3 59.6 56.5 34.9

# Tasks:

1. Perform an analysis of the exam results structure in both groups by determining: measures of central tendency, measures of dispersion, skewness, and kurtosis for the detailed series. Then construct 2 grouped frequency distributions (for each group) and create histograms of the empirical distributions. Based on appropriately selected measures (which ones) and histograms, compare the exam results obtained in both groups.
2. Check if the exam results in each group follow a normal distribution using the Kolmogorov-Smirnov test, with a significance level of α=0.05.
3. Can it be stated at the significance level α=0.05 that the mean number of points obtained by students in group 1 is 55?
4. Can it be stated at the significance level α=0.05 that the standard deviation of the number of points obtained by students in group 2 is 20?
5. Did students in group 1 prepare better for the exam than students in group 2? A hypothesis should be formulated and tested at a significance level of α=0.05.

# Results:

### Task 1
   Comparison and Histograms:

<p align="center">
  <img src="https://github.com/AdamKuraczynski/DataAnalysisWithR/assets/145380612/76ab3f1e-f127-4f56-b626-7043a1b1995d" alt="Photo of table with results comparison" width=650> 
  <img src="Histograms\HistogramGroup1.png" alt="HistogramGroup1 Photo" height=500 width=650> <img src="Histograms\HistogramGroup2.png" alt="HistogramGroup2 Photo" height=500 width=650> 
</p> 

<br><hr>

### Task 2
  **Null hypothesis:**  The distribution is normal  
   **Alternative hypothesis:**   The distribution is different than normal  
<p align="center">
  <img src="https://github.com/AdamKuraczynski/DataAnalysisWithR/assets/145380612/9a86a3a2-8c2b-4120-bc7b-6ac3dc35c214" alt="Code Results for Task 2">
</p>  

  **Conclusion:**   
As a result of the conducted test, p-values of 0.1302 for Group1Results and 0.2154 for Group2Results were obtained. Based on these results, it can be concluded that there is not sufficient evidence to reject the null hypothesis for both data groups. Therefore, it can be assumed that both groups have a distribution close to the normal distribution.

<br><hr>

### Task 3
  **Null hypothesis:**  True mean is equal to 55  
   **Alternative hypothesis:**   True mean is not equal to 55  
<p align="center">
  <img src="https://github.com/AdamKuraczynski/DataAnalysisWithR/assets/145380612/201586d6-69be-404a-b572-2ca04bf00833" alt="Code Results for Task 3">
</p>  

  **Conclusion:**   
After conducting the test, it can be argued that there is insufficient evidence to reject the null hypothesis that the average number of points obtained by students in Group 1 is 55. The average number of points obtained by students in Group 1 was 62.04, indicating that these results are slightly higher than the hypothetical value of 55. However, based on the results of the t-Student test, it cannot be concluded that the difference between the mean obtained by Group 1 and the value of 55 is statistically significant. Additionally, the 95% confidence interval for the mean number of points ranges from 53.96 to 70.23, meaning that there is 95% certainty that the true value of the mean number of points lies within this interval. Therefore, according to the assumed significance level α = 0.05 and based on the conducted analyses, it can be stated that the average number of points obtained by students in Group 1 was 55.

<br><hr>

### Task 4
  **Null hypothesis:**  Actual variance is 400  
   **Alternative hypothesis:**   The actual variance is not equal to 400  
<p align="center">
  <img src="https://github.com/AdamKuraczynski/DataAnalysisWithR/assets/145380612/cd69ff4a-41e3-4ef9-bd1b-cc189779c188" alt="Code Results for Task 4">
</p>  

  **Conclusion:**   
Based on the results of the variance and standard deviation analysis, we can conclude that the standard deviation of the number of points obtained by students in Group 2 is not 20 at the significance level α=0.05.

<br><hr>

### Task 5
  **Null hypothesis:**  The mean of scores in Group 1 is less than or equal to the mean of scores in Group 2.  
   **Alternative hypothesis:**    The mean of scores in Group 1 is greater than the mean of scores in Group 2.   
<p align="center">
  <img src="https://github.com/AdamKuraczynski/DataAnalysisWithR/assets/145380612/d8cc5a60-1e61-4712-986e-d9a6d7a677b9" alt="Code Results for Task 5">
</p>  

  **Conclusion:**   
Based on the results of the t-Student test, we obtained a p-value of 0.01292. This result is smaller than the assumed significance level of 0.05, indicating that we can reject the null hypothesis and accept the alternative hypothesis. We can conclude that there is a statistically significant difference between the mean scores of the exam in Group 1 and Group 2, indicating that students in Group 1 were better prepared for the exam than students in Group 2.
