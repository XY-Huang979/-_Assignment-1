# Assignment-1

How to run this program?  

  * Open Assignment_1.m in matlab or octave, and run it.

1. The data set you have chosen and its main characteristics.  

   * Source: [UCI Machine Learning Repository](http://archive.ics.uci.edu/ml)  
   * Dete set ID: 2861753 (Iris)  
   * Chose the follow items for the two features:  
     > sepal length in cm  
     > sepal width in cm  
     
2. The data preprocessing operations you have applied to improve data quality.  

   * Edit: change the label into 0,1,2  
   * So it looks like:  

    |feature1|feature2|label|  
    |:---:|:---:|:---:|  
    |7       |3.2     |~~Iris Versicolour~~ `0`|  
    |5.1     |3.5     |~~Iris Setosa~~ `1`     |  
    |~~6.3~~ |~~3.3~~ |~~Iris Virginica~~ `2`  |  
     >we only need two kinds of iris
    
3. The design of the different modules of your program. In describing each module, you should relate your design to the theories you have learnt in the class.  

   1. Initialization & Load Data (Training_set:Test_set=6:4)  
   2. Put some labels & Specified in plot order ('Iris-setosa', 'Iris-versicolor')  
   3. So (X1*b_ten) = ((𝒘^𝑇)*𝒙+𝑏)
   ```matlab
   m=length(y);
   b_ten=[-5;6;1];
   X1=[x,ones(m,1)];
   ```
   4. 
   ```matlab
   ddl=zeros(3);
   p=(exp(X1*b_ten)./(1+exp(X1*b_ten)));  %p is the rate of(y=1 | x)
   dl=sum(-1*X1.*(y-p));                  %dl = ∂l(b)/∂b
      
     for i=1:m,
      
       ddl_ten=(X1(i,:))'*X1(i,:)*p(i)*(1-p(i));
       ddl=ddl+ddl_ten;                   %ddl = ∂^2*l(b)/∂b∂b^T
      
     end
   ```
   5. Using Newton’s method, in t+1 iteration,  
      𝜷^(𝑡+1)=𝜷^𝑇−((𝜕^2 ℓ(𝜷))/(𝜕𝜷𝜕𝜷^𝑇 ))^(−1)  𝜕ℓ(𝜷)/𝜕𝜷
    ```matlab
    e=inv(ddl)*dl';
    b=b_ten-e;
    b_ten=b;
    ```
   6. Print the boundary line & Give the accuracy rate.  
   
4. The prediction results and your interpretation of the results. Plot a figure like the
following one in your report:  
   * It shoud work.Becouse I chose the two features that can distinguish two kinds of iris successfully.  
   * Finally, the image is pretty and the accuracy rate is 100%.  
   ![My result](https://cdn1.imggmi.com/uploads/2019/10/1/008985de9393fe4df4f7103e252621a3-full.jpg "My result")
5. Limitations and possible improvements of the program.  
   * In Newton’s method, we need to calculate the inverse of matrix. Sometime it come up with a Singular matrix. Maybe gradient descent method is a better way.
