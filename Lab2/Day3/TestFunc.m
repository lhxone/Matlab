function y = TestFunc(x)
    if x<1
        y=x;
    elseif x<=10
        y=2*x-1;
    elseif x<=30
        y=3*x-11;
    else
        y=sin(x)+log(x);
    end
end