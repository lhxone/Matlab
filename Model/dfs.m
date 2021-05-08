function ans = dfs(Map, x, y, d, times)
    [m, n] = size(Map);

    %如果m*n为奇数，则不存在恰覆盖方案
    if mod(m * n, 2) ~= 0
        fprintf('No Possible!');
        ans = 0;
        return
    end

    % if isDone == true
    %     isDone = false;
    % end

    %搜索到答案
    if (x == -1) && (y == -1) && (~isDone)
        ans = ans + 1;
        fprintf('Ans%d:\n', ans);
        Map
        isDone = true;
        return
    end

    Map(x, y) = times;

    switch d
        case '1'

            if x == n
                Map(x, y) = 0;
                return
            end

            Map(x + 1, y) = times;
        case '-1'

            if y == m
                Map(x,y) = 0;
                return
            end

            Map(x,y+1) = times;
    end

    times = times + 1;
    [x, y] = FindNext(Map);
    dfs(Map,x,y,'1',times);
    Map=ResetMap(Map,times);
    dfs(Map,x,y,'-1',times);
    Map=ResetMap(Map,times);

end

    % , x, y, d, times, isDone
