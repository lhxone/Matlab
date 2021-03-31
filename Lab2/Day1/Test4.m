%将一个绘图窗口分割成 m*n 个子区域，并 按行 从左至右 依次编号. p表示第 p 个绘图子区域.
%subplot('Position',[left,bottom,width,height])
x = -2:0.2:2;
y1 = x + sin(x);
y2 = sin(x) ./ x;
y3 = (x.^2);
subplot(2, 2, 1), plot(x, y1, 'm.');    %'m'表示洋红，'.'表示用点标出数据点
subplot(2, 2, 2), plot(x, y2, 'rp');    %'r'表示红色，'p'表示五角星
subplot('position', [0.2, 0.05, 0.6, 0.45]), plot(x, y3)
