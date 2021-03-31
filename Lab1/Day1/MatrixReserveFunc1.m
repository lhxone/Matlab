function MatrixReserveFunc1(A)
    [m, n] = size(A);

    for row = 1:m / 2
        temp = A(row, :);
        A(row, :) = A(m - row + 1, :);
        A(m - row + 1, :) = temp;
    end

    A
end
