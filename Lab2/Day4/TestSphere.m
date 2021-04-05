v = [-2 2 -2 2 -2 2];
subplot(1, 2, 1), sphere(30), axis(v);
title('半径为1的球面');
subplot(1, 2, 2), [x, y, z] = sphere(30);
surf(2 * x, 2 * y, 2 * z);
title('半径为2的球面');
