%% Initialization
clear ; close all;clc

% Load Data

data = load('iris.txt');
X = data(21:80, [1,2]);       y = data(21:80, 5);
test_x = data([1:20 81:100], [1,2]);  test_y = data([1:20 81:100], 5);

% Training_set:Test_set=6:4

plotData(X,y);

% Put some labels 

hold on;
xlabel('sepal length in cm')
ylabel('sepal width in cm')

% Specified in plot order

legend('Iris-setosa', 'Iris-versicolor')

% Call function L1

b=L1(X,y);

% Print the boundary line

x = linspace(min(X(:,1))-0.2, max(X(:,1))+0.1);
x1=-(b(1)/b(2))*x-(b(3)/b(2));
plot(x,x1)
hold off;

fprintf('\nThe accuracy rate is: %f %%\n',...
    100*Accuracy(test_x,test_y,b));

% Give the accuracy rate


