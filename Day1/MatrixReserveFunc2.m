function MatrixReserveFunc2(A)
    [m, n] = size(A);

    for col = 1:n / 2
        temp = A(:, col);
        A(:, col) = A(:, n - col + 1);
        A(:, n - col + 1) = temp;
    end

    A
end
