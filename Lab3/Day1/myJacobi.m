function x = myJacobi(A, b, X0, mytol)

    %A为系数矩阵.
    %b为右端常向量.
    %X0为初始层，默认取0.
    %mytol表示允许误差, 要求默认值为1e-6.

    %判断参数
    if nargin == 3
        mytol = 1.0e-6;
    elseif nargin == 2
        mytol = 1.0e-6;
        X0 = zeros(size(b));
    elseif nargin < 2
        error('输入参数不足');
        return
    end


    %判断系数矩阵是否是方阵
    [row,col]=size(A);
    if row ~= col       
        error('系数矩阵不是方阵');
        return
    end

    %判断系数矩阵是否可逆
    if abs(det(A)) < mytol
        disp('系数矩阵不可逆')
        return
    end

    D = diag(diag(A)); %求A的对角矩阵
    L = -tril(A, -1); %求A的下三角矩阵
    U = -triu(A, 1); %求A的上三角矩阵
    B = D \ (L + U); %Jacobi迭代矩阵
    f = D \ b;
    x = B .* X0 + f;
    n = 1; %迭代次数

    while norm(x - X0) >= mytol
        X0 = x;
        x = B * X0 + f;
        n = n + 1;

        % if (n >= 200)
        %     disp('Warning:迭代次数太多,可能不收敛!')
        %     return;
        % end

    end

    x = x(:, 1);
end
