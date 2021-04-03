x = -10:0.1:40;
x1 = x(1:110);
x2 = x(111:201);
x3 = x(202:401);
x4 = x(402:501);

for index = 1:numel(x1)
    y1(index) = x1(index);
end

for index = 1:numel(x2)
    y2(index) = 2 * x2(index) - 1;
end

for index = 1:numel(x3)
    y3(index) = 3 * x3(index) - 11;
end

for index = 1:numel(x4)
    y4(index) = sin(x4(index)) + log(x4(index));
end

plot(x1, y1, 'r*', x2, y2, 'bd', x3, y3, 'gH', x4, y4, 'y^')