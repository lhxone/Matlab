[X, Y] = meshgrid(-8:0.5:8);
r = sqrt(X.^2 + Y.^2) + eps;
Z = sin(r) ./ r;
meshz(X, Y, Z)
