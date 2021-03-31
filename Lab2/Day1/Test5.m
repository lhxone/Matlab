clc;
clear; 
close all
x = 0:0.2:2 * pi;
hold on
plot(x, cos(x), 'r+:');
plot(x, sin(x), 'bd-.');
plot(x, 2 * cos(x), 'kh-');
legend('cos(x)', 'sin(x)', '2cos(x)')
xlabel('x');
ylabel('y');
title('几种三角函数图像比较')
text(0.7, 1.7, '\leftarrow 2cos(x)');
text(2.7, 0.6, '\leftarrow sin(x)');
text(2.2, -0.5, '\leftarrow cos(x)')
hold off
gtext('真好!')
