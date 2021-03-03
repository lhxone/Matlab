function y = myfun1(x)
    %也可以 [y]=myfun1(x)
    if x > 1
        y = x^2 + 1;
    elseif x > 0 && x <= 1
        y = 2 * x;
    else
        y = x^3;
    end
