function result = Simpson(myFun,a, b)
    %Simpson求积
    result = (b - a) * (myFun(a) + 4 * myFun((a + b) / 2) + myFun(b)) / 6;
end
