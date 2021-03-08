format long;
n = 0;
d = 1;
s = 0;

while d >= 1e-6
    s = s + ((-1)^n * factorial(6 * n)) / (factorial(3 * n) * (factorial(n))^3);
    mypi = (12 * s)^(-1)
    d = abs(pi - mypi);
    t = t + 1;
end

n
