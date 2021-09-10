% 量化分析标准：A,B,C的需求量, 整体的完成量,误差在某范围内的订单个数


demand=readtable('data1.csv');
demandA=[];
demandB=[];
demandC=[];
demand_data=table2array(demand(1:402,3:242));

suply=readtable('data2.csv');

% 计算A,B,C的需求量
for i =1:402
    if demand.x____(i)=="A"
        demandA=[demandA;demand_data(i,:)];
    else if demand.x____(i)=="B"
            demandB=[demandB;demand_data(i,:)];
        else
            demandC=[demandC;demand_data(i,:)];
        end
    end
end
A_demand_total=sum(sum(demandA));
B_demand_total=sum(sum(demandB));
C_demand_total=sum(sum(demandC));

% 计算每一家供应商完成量与需求量的误差







