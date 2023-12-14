# Module 12 Report Template

## Overview of the Analysis

In this section, describe the analysis you completed for the machine learning models used in this Challenge. This might include:

* Explain the purpose of the analysis. 
The purpose of this analysis is to create a machine learning model that evaluates the risk of a loan. The model will give one of two outputs: loan status approved or loan status denied. The data we are given is imbalanced data, which is reflective of the real world where there exists a substantially lower amout of loans that get rejected.
* Explain what financial information the data was on, and what you needed to predict.
We were given information regarding a loan applicant's personal financial information. Then those features are used to determine if they shall qualify for the given loan they have applied for. Therefore, we are also given the features of each loan as well such as the size and interest rate of the loan. The features provided within the dataset are used in efforts to predict whether or not a person is given the loan. Loan status will be set equal to 0 or 1 accordingly. 
* Provide basic information about the variables you were trying to predict (e.g., `value_counts`).
We are trying to predict wheter or not the person is qualified for the loan they are applying for.
* Describe the stages of the machine learning process you went through as part of this analysis.
We trained the machine of a portion of the data that we first balanced. We had to balanced it because the healthy loans outnumbered the unhealthy ones by a substantial amount. So we balanced the data, trained the data, and then tested/validated the algorithm with the remaining portion of the data that was not used to train it. 
* Briefly touch on any methods you used (e.g., `LogisticRegression`, or any resampling method).

## Results

Using bulleted lists, describe the balanced accuracy scores and the precision and recall scores of all machine learning models.

* Machine Learning Model 1:
  * Description of Model 1 Accuracy, Precision, and Recall scores.

For 0, indicating a loan status of approved:  
  - Accuracy (f1-score): 1.00
  - Precision: 1.00
  - Recall: 0.99


For 1:
  - Accuracy: 0.88
  - Precision: 0.85
  - Recall: 0.91



* Machine Learning Model 2:
  * Description of Model 2 Accuracy, Precision, and Recall scores.

For 0: 
  - Accuracy: 1.00
  - Precision: 1.00
  - Recall:    0.99

For 1:
  - Accuracy: 0.91
  - Precision: 0.84
  - Recall: 0.99
## Summary

Summarize the results of the machine learning models, and include a recommendation on the model to use, if any. For example:
* Which one seems to perform best? How do you know it performs best?
* Does performance depend on the problem we are trying to solve? (For example, is it more important to predict the `1`'s, or predict the `0`'s? )

If you do not recommend any of the models, please justify your reasoning.

From model 1 to model 2, we saw substantial improvements in the machine learning model's ability to accurately predict the '1''s, while the machine's ability to predict '0''s remained the same. 

The precision for ML model 2 is worrisome given what we are attempting to predict. A precision of 0.84 means that our model incorrectly predicts the outcome of about 26/100 loan applications. In this case, out model would throw out 26 loan applications that 'should' have been approved, which translates to 2600 loan applications that should have been approved given 100,000 applications. Say, for example, the average principal of those 2600 loans is $5000, then that is about $13 million that we would not be able to gain interest on, despite those applicants meeting the criteria for a healthy loan status.  We would have to do more reasearch to consider if it is okay with our company to lose that much potential cashflow. More likely, we would be tasked with building new and combining models  better performance is achieved. 

A similar discussion would have to be had about the model's accuracy in predicting unhealthy loans. In this case, 0.91 translates to 9 out of 100 unhealthy loan applications being approved the weights of their features dictated that the loan should have been denied. 