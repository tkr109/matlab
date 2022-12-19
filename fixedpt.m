clc;
g=@(x)(-2*sin(pi*x)); 
x0=1;
e=10^-2;
n=input('Enter the maximum number of iteration');
i=1;
while(i<=n)
    x1=g(x0);
    if abs(x1-x0)<=e
        fprintf('the value of x1=%f and iteration taken=%d is',x1,i)
        break;
    else
        x0=x1;
        i=i+1;
    end
end  
f(x1)