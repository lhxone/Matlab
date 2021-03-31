format long;
n = 0;
d = 1;
t = 0;
s = 0;
mypi = 0;

while d >= 1e-6
    s = s + ((-1)^t*(1/(2*t+1)));
    mypi = 4 * s
    d = abs(pi - mypi);
    t = t + 1;
end

t
