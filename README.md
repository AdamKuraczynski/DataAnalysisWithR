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

1. Comparison and Histograms:

<p align="center">
  <img src="https://github.com/AdamKuraczynski/DataAnalysisWithR/assets/145380612/76ab3f1e-f127-4f56-b626-7043a1b1995d" alt="Photo of table with results comparison" width=650> 
  <img src="Histograms\HistogramGroup1.png" alt="HistogramGroup1 Photo" height=500 width=650> <img src="Histograms\HistogramGroup2.png" alt="HistogramGroup2 Photo" height=500 width=650> 
</p>  

2. **Null hypothesis:**  
   **Alternative hypothesis:**   
<p align="center">
  <img src="https://github.com/AdamKuraczynski/DataAnalysisWithR/assets/145380612/9a86a3a2-8c2b-4120-bc7b-6ac3dc35c214" alt="Code Results for Task 2">
</p>  

  **Conclusion:**   
  
3. **Null hypothesis:**  
   **Alternative hypothesis:**    
<p align="center">
  <img src="https://github.com/AdamKuraczynski/DataAnalysisWithR/assets/145380612/201586d6-69be-404a-b572-2ca04bf00833" alt="Code Results for Task 3">
</p>  

  **Conclusion:**   
  
4. **Null hypothesis:**  
   **Alternative hypothesis:**     
<p align="center">
  <img src="https://github.com/AdamKuraczynski/DataAnalysisWithR/assets/145380612/cd69ff4a-41e3-4ef9-bd1b-cc189779c188" alt="Code Results for Task 4">
</p>  

  **Conclusion:**   
  
5. **Null hypothesis:**  
   **Alternative hypothesis:**     
<p align="center">
  <img src="https://github.com/AdamKuraczynski/DataAnalysisWithR/assets/145380612/d8cc5a60-1e61-4712-986e-d9a6d7a677b9" alt="Code Results for Task 5">
</p>  

  **Conclusion:**   
