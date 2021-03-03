sum = 0;

for index = 1:50
    sum = sum + CalFunc(index);
end

disp('f(50)=')
sum
sum=0;

for index = 1:100
    sum = sum + CalFunc(index);
end

disp('f(100)=')
sum
sum=0;

for index = 1:200
    sum = sum + CalFunc(index);
end

disp('f(200)=')
sum
sum=0;