function T = HFSP_int(f, a, b, N)
    %采用N等分的复化Simpson公式，计算函数f在有限区间[a,b]上的积分.
    %返回值T为数值积分值.
    T = f(a, b);
end
