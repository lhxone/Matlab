a = 0;
b = pi / 4;
result = Ti(a, b);
delt = abs(result - sqrt(2));
fprintf('Tixing:result = %f,delt = %f\n', result, delt);
result = Simpson(a, b);
delt = abs(result - sqrt(2));
fprintf('Simpson:result = %f,delt = %f\n', result, delt);