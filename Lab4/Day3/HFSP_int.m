function T = Gauss9(f, a, b, c, d)
    gpt = sqrt(0.6);
    e = (b + a) / 2;
    k = (b - a) / 2;
    g = (d + c) / 2;
    h = (d - c) / 2;
    T = (b - a) * (d - c) / 4 * (25/81 * (f(e + k * gpt, g + h * gpt) + f(e + k * gpt, g - h * gpt)));
end
