function x = myJacobi(A, b, X0, mytol)

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

    D = diag(diag(A)); % 求A的对角矩阵
    L = -tril(A, -1); % 求A的下三角矩阵
    U = -triu(A, 1); % 求A的上三角矩阵
    B = D \ (L + U); % Jacobi迭代矩阵

    e = abs(eig(B)); % 求特征值，判断是否收敛

    if e > 1
        disp('不收敛')
        x = zeros(A_row, 1);
        return;
    end

    f = D \ b;
    x = B .* X0 + f;
    n = 1; % 迭代次数

    while norm(x - X0) >= mytol % 进行迭代
        X0 = x;
        x = B * X0 + f;
        n = n + 1;

    end

    x = x(:, 1);
end
