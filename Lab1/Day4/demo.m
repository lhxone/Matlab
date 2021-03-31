T = classdata;
sum = 0;
point = 0;
cnt = 0;

for index1 = 5:59

    for index2 = 2:127

        if T(index1, index2) >= '0' && T(index1, index2) <= '9'
            point = double(T(index1, index2)) / 10 - 5;

            if point > 4
                sum = sum + 4;
            elseif point < 1
                sum = sum + 1;
            else
                sum = sum + point;
            end

            cnt = cnt + 1;
        end

    end

    sum / cnt

end
