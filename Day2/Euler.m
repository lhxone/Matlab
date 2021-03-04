format long;
t = 0;
d = 1;

while d >= 1e-8
    t = t + 100000;
    mypi = sqrt(6 * EulerSum(t))
    d = abs(pi - mypi);
end

t
