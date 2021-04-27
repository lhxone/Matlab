function x = myGS(A, b, X0, mytol)

    % A为系数矩阵.
    % b为右端常向量.
    % X0为初始层，默认取0.
    % mytol表示允许误差, 要求默认值为1e-6.
    % A为系数矩阵.
    % b为右端常向量.
    % X0为初始层，默认取0.
    % mytol表示允许误差, 要求默认值为1e-6.

    % 判断参数
    if nargin == 3
        mytol = 1.0e-6;
    elseif nargin == 2
        mytol = 1.0e-6;
        N = length(b); % 解向量的维数
        X0 = zeros(N, 1); % 迭代初始值
    elseif nargin < 2
        error('输入参数不足');
        return
    end

    % 判断系数矩阵是否是方阵
    [A_row, A_col] = size(A);
    [b_row, b_col] = size(b);

    if A_row ~= A_col
        error('系数矩阵不是方阵');
        x = zeros(A_row, 1);
        return
    end

    % 判断b是否为常向量
    if b_col ~= 1
        disp('b不是常向量');
        x = zeros(A_row, 1);
        return;
    end

    % 判断常向量是否匹配
    if A_row ~= b_row
        disp('系数矩阵与常向量不匹配');
        x = zeros(A_row, 1);
        return;
    end

    % 判断系数矩阵是否可逆
    if abs(det(A)) < mytol
        disp('系数矩阵不可逆');
        x = zeros(A_row, 1);
        return
    end

    %将矩阵分裂为A=D-L-U
    D = diag(diag(A));
    L = -tril(A, -1); %下三角
    U = -triu(A, 1); %上三角

    g = (D - L) \ b;
    B = (D - L) \ U;

    % TODO:判断收敛

    x = B * X0 + g;

    while norm(x - X0) >= mytol
        X0 = x;
        x = B * X0 + g;
    end

end
