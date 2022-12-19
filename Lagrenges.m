X=input("Enter the absicca matrix");
Y=input("Enter the ordinate matrix");

n=length(X);

L=zeros(n,n);

for i=1:n
   v=1;
    for j=1:n
        if i~=j
            v=conv(v,poly(X(j)))/(X(i)-X(j));
        end
    end
    L(i,:)=v*Y(i);
end

L