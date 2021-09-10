% 量化分析标准：A,B,C的需求量, 整体的完成量,误差在某范围内的订单个数


demand=readtable('data1.csv');
demandA=[];
demandB=[];
demandC=[];
demand_data=table2array(demand(1:402,3:242));

supply=readtable('data2.csv');
supplyA=[];
supplyB=[];
supplyC=[];
supply_data=table2array(supply(1:402,3:242));

% 计算A,B,C的需求量
for i=1:402
    if demand.x____(i)=="A"
        demandA=[demandA;demand.x___ID(i),demand_data(i,:)];
    else if demand.x____(i)=="B"
            demandB=[demandB;demand.x___ID(i),demand_data(i,:)];
        else
            demandC=[demandC;demand.x___ID(i),demand_data(i,:)];
        end
    end
    if supply.x____(i)=="A"
        supplyA=[supplyA;supply.x___ID(i),supply_data(i,:)];
    else if supply.x____(i)=="B"
            supplyB=[supplyB;supply.x___ID(i),supply_data(i,:)];
        else
            supplyC=[supplyC;supply.x___ID(i),supply_data(i,:)];
        end
    end
end

% 计算每一家供应商完成量与需求量的误差
dif=demand_data-supply_data;

% 计算每一家供应商误差数量
dif_dataA=[];
dif_dataB=[];
dif_dataC=[];

[row,col]=size(demandA);
for i=1:row
    lackt=0;
    excdt=0;
    nicet=0;
    data_of_demand=cell2mat(demandA(i,2));
    data_of_supply=cell2mat(supplyA(i,2));
    for j=1:240
        if data_of_demand(j)~=0 & data_of_supply(j)~=0
            if data_of_demand(j)>data_of_supply(j)
                lackt=lackt+1;
            else if data_of_demand(j)<data_of_supply(j)
                    excdt=excdt+1;
                else
                    nicet=nicet+1;
                end
            end
        end
    end
    dif_dataA=[dif_dataA;demandA(i,1),lackt,excdt,nicet,(excdt+nicet)/(lackt+excdt+nicet),sum(cell2mat(supplyA(i,2)))];
end
[row,col]=size(demandB);
for i=1:row
    lackt=0;
    excdt=0;
    nicet=0;
    data_of_demand=cell2mat(demandB(i,2));
    data_of_supply=cell2mat(supplyB(i,2));
    for j=1:240
        if data_of_demand(j)~=0 & data_of_supply(j)~=0
            if data_of_demand(j)>data_of_supply(j)
                lackt=lackt+1;
            else if data_of_demand(j)<data_of_supply(j)
                    excdt=excdt+1;
                else
                    nicet=nicet+1;
                end
            end
        end
    end
    dif_dataB=[dif_dataB;demandB(i,1),lackt,excdt,nicet,(excdt+nicet)/(lackt+excdt+nicet),sum(cell2mat(supplyB(i,2)))];
end
[row,col]=size(demandC);
for i=1:row
    lackt=0;
    excdt=0;
    nicet=0;
    data_of_demand=cell2mat(demandC(i,2));
    data_of_supply=cell2mat(supplyC(i,2));
    for j=1:240
        if data_of_demand(j)~=0 & data_of_supply(j)~=0
            if data_of_demand(j)>data_of_supply(j)
                lackt=lackt+1;
            else if data_of_demand(j)<data_of_supply(j)
                    excdt=excdt+1;
                else
                    nicet=nicet+1;
                end
            end
        end
    end
    dif_dataC=[dif_dataC;demandA(i,1),lackt,excdt,nicet,(excdt+nicet)/(lackt+excdt+nicet),sum(cell2mat(supplyC(i,2)))];
end






