function y = EulerFunc(n)
    sum = 1;

    for index = 2:n
        sum = sum + 1 / (index^2);
    end

    y = sum;
    return
end
