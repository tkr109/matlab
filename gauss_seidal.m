a=input("Enter the coefficient matrix");
b=input("Enter the constant matrix(colounm form)");
c=length(a);
x=(1:c);
for i=1:c
    x(i)=input("Initial value of x");
end
n=input("Enter the number of irterations");
k=1;
while k<=n
    for i=1:c
        sum=b(i);
        for j=1:c
            if i~=j
                sum=sum-a(i,j)*x(j);
            end
        end
        x(i)=sum/a(i,i);
    end
    k=k+1;
end
disp(x(1:c))