x=[2 3 4 5 6     ];
y= [4 7 8 11 15];
 n=length(x);
 p=4.6;

 n = size(x,1);
 if n == 1
    n = size(x,2);
 end
 for i = 1:n
    D(i,1) = y(i);
 end
 for i = 2:n
    for j = 2:i
       D(i,j)=(D(i,j-1)-D(i-1,j-1))/(x(i)-x(i-j+1));
    end
 end

 fx0 = D(n,n);
 for i = n-1:-1:1
    fx0 = fx0*(p-x(i)) + D(i,i);
 end
fx0