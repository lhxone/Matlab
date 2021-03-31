function y = TestFactorFunc(n)
    fac = 1;
    s = 0;
    for index1 = 1:n

        for index2 = 1:index1
            fac = fac * index2;
        end

        s = s + fac;
        fac = 1;
    end

    y = s;
end
