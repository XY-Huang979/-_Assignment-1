function plotData(X, y)

% Create new figure
figure;
hold on;

pos=find(y == 1); neg=find(y == 0);
plot(X(pos, 1), X(pos, 2), 'b+');
plot(X(neg, 1), X(neg, 2), 'mo');

hold off;

end