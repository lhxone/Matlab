clc;
clear;
format short g
A = [1, 2, 3; 4, 5, 6; 7, 8, 9];
p = poly(A)
poly2str(p, 'x')
d = eig(A)
[V, D] = eig(A)
A * V - V * D
