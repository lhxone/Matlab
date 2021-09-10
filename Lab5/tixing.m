function [t, y] = tixing(f, a, b, y0, N, mytol)
    % 求解形式为y’=f(t,y)的常微分方程的梯形公式
    % a,b为自变量的取值范围
    % y0为初始值
    % N表示对区间[a,b]剖分N等份
    % mytol表示允许误差, 要求默认值为1e-6，用来作为校正终止的条件
    syms a, b;
end
