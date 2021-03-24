num=xlsread("Book1.xls")
num(:,1)=[]
xlswrite('Book1.xls',num,3,'C5')