m = input('m=');
n = input('n=');
Map = zeros(m, n);
ans = 0;
isDone = false;

dfs(Map,1,1,'1',1);
dfs(Map,1,1,'-1',1);

fprintf('%d\n',ans);