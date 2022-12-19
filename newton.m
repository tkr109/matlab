clc;
clear;

f=@(x) cos(x)-x^x;
df=@(x)-sin(x)-x^x*(log(x)+1);

x0=0.1;
n=70;
e=0.00001;

for i=1:n
    x1=x0-f(x0)/df(x0);

    if(abs(x1-x0)<e)
        break;

    else
        x0=x1;
    end
end

fprintf('The root is %2.9f',x1)
f(x1)