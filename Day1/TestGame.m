fprintf("游戏开始！\n请输入你猜的数\n")
num=randi(100)
t=10;
while t>0
    t=t-1;
    x=input('');
    if num==x
        fprintf("猜对了！\n")
        break
    else
        if x>num
            fprintf("High!")
        else
            fprintf("Low!")
        end
        fprintf("还剩%d次机会，请再次输入：",t);
    end
end