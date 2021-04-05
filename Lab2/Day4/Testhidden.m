[x, y, z] = sphere(50);
x1 = 2 * x;
y1 = 2 * y;
z1 = 2 * z;
surf(x, y, z);
shading interp;
hold on
mesh(x1, y1, z1), colormap(hot)
hidden off;
axis equal;
