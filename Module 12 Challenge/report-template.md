# Module 12 Report Template

## Overview of the Analysis

In this section, describe the analysis you completed for the machine learning models used in this Challenge. This might include:

* Explain the purpose of the analysis. 
evaluate credit risk with imbalanced data.. Usually more healthy loan applicants than unhealthy.
* Explain what financial information the data was on, and what you needed to predict.
We were given information regarding a loan applicant's personal financial information. Then those features are used to determine if they shall qualify for the given loan they have applied for. Therefore, we are also given the features of each loan as well (loan size, IR). Then those features are used in efforts to predict whether or not a person is given the loan...loan status = 0 or 1 accordingly. 
* Provide basic information about the variables you were trying to predict (e.g., `value_counts`).
We are trying to predict wheter or not the person is qualified for the loan.
* Describe the stages of the machine learning process you went through as part of this analysis.
We trained the machine of a portion of the data that we balanced. We had to balanced it because the healthy loans outnumbered the unhealthy ones, which is based on the real world data. So we balanced the data, trained the data, and then tested/validated the algorithm with the remaining portion of the data that was not used to train it. 
* Briefly touch on any methods you used (e.g., `LogisticRegression`, or any resampling method).

## Results

Using bulleted lists, describe the balanced accuracy scores and the precision and recall scores of all machine learning models.

* Machine Learning Model 1:
  * Description of Model 1 Accuracy, Precision, and Recall scores.



* Machine Learning Model 2:
  * Description of Model 2 Accuracy, Precision, and Recall scores.

## Summary

Summarize the results of the machine learning models, and include a recommendation on the model to use, if any. For example:
* Which one seems to perform best? How do you know it performs best?
* Does performance depend on the problem we are trying to solve? (For example, is it more important to predict the `1`'s, or predict the `0`'s? )

If you do not recommend any of the models, please justify your reasoning.
