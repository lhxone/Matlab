minbnd = -4*pi;  
maxbnd = 4*pi;  
t = minbnd:0.1*pi:maxbnd;  
plot(t, sin(t), 'g', 'Linewidth', 2);  
line([minbnd, maxbnd], [0, 0]);    %绘制x轴  
axis([-10, 10, -2, 2])             %定义显示的坐标区间:x在(-10,10)之间，y在(-2,2)之间  
grid on;  
title('sin(x)');  
xlabel('x');  
ylabel('sin(x)');  
print('-dpng','sin.png');          %保存为png图片，在Matlab当前的工作目录下  