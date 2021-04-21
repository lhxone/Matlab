[X1, Y1] = meshgrid(-3:0.1:3);
Z1 = X1.^2 + Y1.^2;
subplot(2, 1, 1);
mesh(X1, Y1, Z1), title('z = x^2 + y^2');
[X2, Y2] = meshgrid(-10:0.1:10);
Z2 = X2.^2 - 3 * Y2.^2;
subplot(2, 1, 2)
mesh(X2, Y2, Z2), title('z = x^2 - 3y^2???')
