format long;
t = 9e7;
d = 1;

while d >= 1e-10
    if d<=1e-9
        t = t + 100;
    else
        t = t + 100000;
    end
    mypi = sqrt(6 * EulerSum(t))
    d = abs(pi - mypi)
end

t
