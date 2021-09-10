function [t, y] = GJ_Euler(f, a, b, y0, N)
    % 求解形式为y’=f(t,y)的常微分方程的改进Euler公式
    % a,b为自变量的取值范围
    % y0为初始值
    % N表示对区间[a,b]剖分N等份
