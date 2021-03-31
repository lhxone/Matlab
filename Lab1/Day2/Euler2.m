format long;
t = 0;
d = 1;
s=0;

while d >= 1e-4
    t = t + 1;
    s=s+1/(t^2);
    mypi = sqrt(6 * s);
    d = abs(pi - mypi);
end

t
