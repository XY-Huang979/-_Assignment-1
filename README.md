# -_Assignment-1

1. The data set you have chosen and its main characteristics.  

   * source: [UCI Machine Learning Repository](http://archive.ics.uci.edu/ml)  
   * Dete set ID: 2861753 (Iris)  
   * chose the follow items for the two feature:  
     > sepal length in cm  
     > sepal width in cm  
     
2. The data preprocessing operations you have applied to improve data quality.  

   * Edit: change the label into 0,1,2  
   * so it looks like:  

    |feature1|feature2|label|  
    |:---:|:---:|:---:|  
    |7       |3.2     |~~Iris Versicolour~~ `0`|  
    |5.1     |3.5     |~~Iris Setosa~~ `1`     |  
    |~~6.3~~ |~~3.3~~ |~~Iris Virginica~~ `2`  |  
    >we only need two kinds of iris
    
3. The design of the different modules of your program. In describing each module, you should relate your design to the theories you have learnt in the class.  

   1. Initialization & Load Data (Training_set:Test_set=6:4)  
   2. Put some labels & Specified in plot order ('Iris-setosa', 'Iris-versicolor')  
   3. 
   ```matlab
      m=length(y);
      b_ten=[-5;6;1];
      X1=[x,ones(m,1)];
      ```
      So (X1*b_ten) = ((𝒘^𝑇)*𝒙+𝑏)
   4.   
4. The prediction results and your interpretation of the results. Plot a figure like the
following one in your report:  

5. Limitations and possible improvements of the program.  
