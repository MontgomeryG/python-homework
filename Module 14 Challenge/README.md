# Changes to the origional SVM trading algorithm.

## Adjusting size of training dataset

- Changed the month from 3 to 12. Our accuracy increased slightly, but our new model shows a value of 0 for precision for predicting -1.0; not good. Somehow by increasing our DateOffset from 3 to 12 months, our program can no longer predict when our signal is -1.0. 
    Then we tried 'months=6' to see if we'd get some precision back. This change led to a decrease in our model's accuracy compared to the origional model using 3 months. Decreasing the DateOffset from 12 months to 6 months brings back some precision into our results. 
    Using a DateOffset of 6 months gave us the best results out of all the models we implemented (see module14graph.png). However, we should wonder: will these results hold up on live data?


## Adjusting SMA input features

- We changed the short_window to 9 and the long_window to 50. A lot of day traders use the 9 and 50 period moving averages.
- After running the program: 
    Wow. Very interesting that changing the long and short window to 9 and 50 does not work at all. Makes me wonder how the origional 4 and 100 short and long windows were choosen in the first place. Maybe, if we really wanted to see which combination of long/short windows works the best, we could iterate changing the two numbers and printing the classification reports to see which combination proves most best.


## New machine learning classifier

- Using a basic decision dree implementation, we found our results to be worse all around. 
    I believe that the decision tree model overfitted the data, which is something that Sklearn's documentation hinted at; that a drawback of using decisions trees is their tendency to overfit the data. As we can see based on the above graph, in the beginning of the model's training/testing periods it outperforms the actual returns substantially. However, towards about the beginning of 2017 the strategy's returns begin to fall and never really recover. This decision tree model completely 'misses the point'.

    If we wanted to improve this tree model, we could start off by pruning the tree, a method used to reduce overfitting.

### Ultimately, we should implement as many models as possible to determine which one seems best given this data set and our two highly-correlated variables. 