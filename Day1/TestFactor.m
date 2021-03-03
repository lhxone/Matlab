sum=0;
fac=1;
for index1 = 1:20
    for index2 = 1:index1
        fac=fac*index2;
    end
    sum=sum+fac;
    fac=1;
end
disp('Factor(20)=')
sum
sum=0;
for index1 = 1:30
    for index2 = 1:index1
        fac=fac*index2;
    end
    sum=sum+fac;
    fac=1;
end
disp('Factor(30)=')
sum