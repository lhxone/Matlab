function [x, y] = GJ_Euler(f, a, b, y0, N)
    y = [];
    h = (b - a) / N;
    x = a:h:b;
    y(1) = y0;

    for n = 1:N
        y1(n + 1) = y(n) + h * f(x(n), y(n));
        y(n + 1) = y(n) + h / 2 * (f(x(n), y(n)) + f(x(n + 1), y1(n + 1)));
    end

    yy = (x + pi / 2) ./ cos(x);
    plot(x, y, '*', x, yy, '-')
