str = 'a+b,c+d,'
n = findstr(str, ',')%n1是第一个","(4),n2是第二个", "(8)
str1 = str(1:n(1))
str2 = str(n(1) + 1:n(2))
str3 = strrep(str1, ',', '*2')%str replace
a = 5
b = 2
c = 3
d = 4
eval(str1)%计算str1的值
eval(str3)%计算str3的值
str2 = upper(str2)
