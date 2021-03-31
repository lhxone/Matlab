x = -8:0.5:8;
y = -8:0.5:8;
[X, Y] = meshgrid(x, y);
r = sqrt(X.^2 + Y.^2) + eps;    %会出现r=0的情况，因此加一个eps,eps表示浮点数的最小单位
Z = sin(r) ./ r;
mesh(X, Y, Z)
