x = 0:0.1:20;
y1 = 200 * exp(-0.05 * x) .* sin(x); %要用.*
y2 = 0.8 * exp(-0.5 * x) .* sin(10 * x);
plotyy(x, y1, x, y2); %plot只有一个坐标轴，plotyy则有两个坐标轴

legend('y_1=200e^{-0.05x}sinx', 'y_2=0.8e^{-0.5x}sin10x'); %LaTex
