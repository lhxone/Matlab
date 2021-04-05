subplot(1, 3, 1), cylinder;
subplot(1, 3, 2), cylinder([3, 2]);
subplot(1, 3, 3), t = -pi:pi / 10:pi;
[x, y, z] = cylinder(1 + sin(t));
surf(x, y, z)
