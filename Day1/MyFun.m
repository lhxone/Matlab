function y = MyFun(x)
    if x > 1
        y = ln(x) + 1;
    elseif x > 0 && x <= 1
        y = sqrt(2 * x);
    else
        y = abs(x);
    end
