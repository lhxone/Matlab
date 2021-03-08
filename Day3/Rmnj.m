format long;
n = 0;
d = 1;
s = 0;
sqrt_int = (2 * sqrt(2)) / 9801;

while d >= 1e-8
    s = s + (factorial(4 * n) * (1103 + 26390 * n)) / ((factorial(n)^4) * ((396)^(4 * n)));
    mypi = (sqrt_int * s)^(- 1)
    d = abs(pi - mypi)
    n = n + 1;
end

n
