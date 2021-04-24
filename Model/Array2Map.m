function Map = Array2Map(Array, n, m)
    % Array2Map - Description
    %
    % Syntax: Map = Array2Map(Array)
    %
    % Long description
    Map = zeros(n, m);
    [row, col] = size(Array);

    for index = 1:row
        Map(Array(index, 2), Array(index, 1)) = 1;

        switch Array(index, 3)
            case 1
                Map(Array(index, 2) + 1, Array(index, 1)) = 1;
            case - 1
                Map(Array(index, 2), Array(index, 1) + 1) = 1;
        end

        Map;

    end

end
