function y = Fib(n)
    A(1) = 1;
    A(2) = 1;

    for i = 3:n
        A(i) = A(i - 1) + A(i - 2);
    end

    y = A(n);
    return
end
