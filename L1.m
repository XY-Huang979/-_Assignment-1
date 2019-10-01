function b=L1(x,y)

m=length(y);
b_ten=[-5;6;1];
X1=[x,ones(m,1)];
ddl=zeros(3);
e=ones(3,1);
while max(abs(e))>0.001
       
    p=(exp(X1*b_ten)./(1+exp(X1*b_ten)));
    dl=sum(-1*X1.*(y-p));
    
    for i=1:m,
      
      ddl_ten=(X1(i,:))'*X1(i,:)*p(i)*(1-p(i));
      ddl=ddl+ddl_ten;
      
    end
    e=inv(ddl)*dl';
    b=b_ten-e;
    b_ten=b
    %g=jacobian(l,[ba,bb,bc]);
    %gi=subs(g,bl,b0);
    %h=hessian(l,[ba,bb,bc]);
    %hi=subs(h,bl,b0);
    %b1=b0-(inv(eval(hi)))*(eval((gi)'));
    %b0=b1;

end
b=b_ten;
end