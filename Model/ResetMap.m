function Map = ResetMap(Old_Map, times)
    [m, n] = size(Old_Map);

    for index1 = 1:m

        for index2 = 1:n

            if Old_Map(index1, index2) == times
                Old_Map(index1, index2) = 0;
            end

        end

    end

    Map = Old_Map;
end
