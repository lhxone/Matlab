a=0;
b=0;
c=1;
i=1;
format long
while c>=10^(-6)
    a=a+1/i^2;
    b=sqrt(6*a);
    c=abs(pi-b);
    i=i+1;
end
c
b
i