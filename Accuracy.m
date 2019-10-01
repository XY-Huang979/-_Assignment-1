function A=Accuracy(x,y,b)

m=length(y);
x=[x,ones(m,1)];
n=zeros(m,1);
for i=1:m,
  
  if x(i,2)>-(b(1)/b(2))*x(i,1)-(b(3)/b(2))
    
    n(i)=1;  % If data is on the left side of the boundary,label it as 1.
    
  end
  
end

A=1-sum(abs(y-n))/m; % If we have the right answer ==> (y-n)=0.

end