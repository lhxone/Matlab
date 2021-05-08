function [x, y] = FindNext(Map)
    [m, n] = size(Map);

    for index1 = 1:m

        for index2 = 1:n

            if Map(index1, index2) == 0
                x = index1;
                y = index2;
                return
            end

        end

    end

end
