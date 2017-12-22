
%Cell_data = csvread('battery.csv',1,1);
Cell_data = csvread('battery_complet.csv',1,1);

Z_Col = 2;
Capacity_Col = 1;

Capacity_data = Cell_data(:,Capacity_Col);
Z_data = Cell_data(:,Z_Col);

%% Plot Data
plot(Capacity_data,Z_data,'o');
xlabel('Capacite (mAh)')
ylabel('Z (mohm)')
title('Data')
% legend('f(soc)','Location','SouthEast')
% hold off

%% 
[Cmuhat,Csigmahat] = normfit(Capacity_data);
[Zmuhat,Zsigmahat] = normfit(Z_data);