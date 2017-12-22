%% Experimental Data
Voltage_Col = 1;
Capacity_Col = 3;
Z_Col = 7;
nb_row = 13;
nb_cell = 20;

SOC_data_C = zeros(nb_row,nb_cell);
SOC_data_CMax = zeros(1,nb_cell);
SOC_data_V = zeros(nb_row,nb_cell);
SOC_data_Z = zeros(1,nb_cell);

%% Cell 1
Cell1 = 1;
SOC_data1 = csvread('Battery_Data_Discharge/1-1-1.csv',2,1);
SOC_data_C(:,Cell1) = SOC_data1(:,Capacity_Col);

SOC_data_CMax(1,Cell1) = SOC_data1(end,Capacity_Col);
SOC_data_C(:,Cell1) = (1-SOC_data_C(:,Cell1)/SOC_data_CMax(1,Cell1)); % Value from 0 to 1
SOC_data_V(:,Cell1) = SOC_data1(:,Voltage_Col);
SOC_data_Z(Cell1) = SOC_data1(1,Z_Col);

%% Cell 2
Cell2 = 2;
SOC_data2 = csvread('Battery_Data_Discharge/1-1-2.csv',2,1);
SOC_data_C(:,Cell2) = SOC_data2(:,Capacity_Col);

SOC_data_CMax(1,Cell2) = SOC_data2(end,Capacity_Col);
SOC_data_C(:,Cell2) = (1-SOC_data_C(:,Cell2)/SOC_data_CMax(1,Cell2)); % Value from 0 to 1
SOC_data_V(:,Cell2) = SOC_data2(:,Voltage_Col);
SOC_data_Z(Cell2) = SOC_data2(1,Z_Col);

%% Cell 3
Cell3 = 3;
SOC_data3 = csvread('Battery_Data_Discharge/1-1-3.csv',2,1);
SOC_data_C(:,Cell3) = SOC_data3(:,Capacity_Col);

SOC_data_CMax(1,Cell3) = SOC_data3(end,Capacity_Col);
SOC_data_C(:,Cell3) = (1-SOC_data_C(:,Cell3)/SOC_data_CMax(1,Cell3)); % Value from 0 to 1
SOC_data_V(:,Cell3) = SOC_data3(:,Voltage_Col);
SOC_data_Z(Cell3) = SOC_data3(1,Z_Col);

%% Cell 4
Cell4 = 4;
SOC_data4 = csvread('Battery_Data_Discharge/1-1-4.csv',2,1);
SOC_data_C(:,Cell4) = SOC_data4(:,Capacity_Col);

SOC_data_CMax(1,Cell4) = SOC_data4(end,Capacity_Col);
SOC_data_C(:,Cell4) = (1-SOC_data_C(:,Cell4)/SOC_data_CMax(1,Cell4)); % Value from 0 to 1
SOC_data_V(:,Cell4) = SOC_data4(:,Voltage_Col);
SOC_data_Z(Cell4) = SOC_data4(1,Z_Col);

%% Cell 5
Cell5 = 5;
SOC_data5 = csvread('Battery_Data_Discharge/1-1-5.csv',2,1);
SOC_data_C(:,Cell5) = SOC_data5(:,Capacity_Col);

SOC_data_CMax(1,Cell5) = SOC_data5(end,Capacity_Col);
SOC_data_C(:,Cell5) = (1-SOC_data_C(:,Cell5)/SOC_data_CMax(1,Cell5)); % Value from 0 to 1
SOC_data_V(:,Cell5) = SOC_data5(:,Voltage_Col);
SOC_data_Z(Cell5) = SOC_data5(1,Z_Col);

%% Cell 6
Cell6 = 6;
SOC_data6 = csvread('Battery_Data_Discharge/1-2-1.csv',2,1);
SOC_data_C(:,Cell6) = SOC_data6(:,Capacity_Col);

SOC_data_CMax(1,Cell6) = SOC_data6(end,Capacity_Col);
SOC_data_C(:,Cell6) = (1-SOC_data_C(:,Cell6)/SOC_data_CMax(1,Cell6)); % Value from 0 to 1
SOC_data_V(:,Cell6) = SOC_data6(:,Voltage_Col);
SOC_data_Z(Cell6) = SOC_data6(1,Z_Col);

%% Cell 7
Cell7 = 7;
SOC_data7 = csvread('Battery_Data_Discharge/1-2-2.csv',2,1);
SOC_data_C(:,Cell7) = SOC_data7(:,Capacity_Col);

SOC_data_CMax(1,Cell7) = SOC_data7(end,Capacity_Col);
SOC_data_C(:,Cell7) = (1-SOC_data_C(:,Cell7)/SOC_data_CMax(1,Cell7)); % Value from 0 to 1
SOC_data_V(:,Cell7) = SOC_data7(:,Voltage_Col);
SOC_data_Z(Cell7) = SOC_data7(1,Z_Col);

%% Cell 8
Cell8 = 8;
SOC_data8 = csvread('Battery_Data_Discharge/1-2-3.csv',2,1);
SOC_data_C(:,Cell8) = SOC_data8(:,Capacity_Col);

SOC_data_CMax(1,Cell8) = SOC_data8(end,Capacity_Col);
SOC_data_C(:,Cell8) = (1-SOC_data_C(:,Cell8)/SOC_data_CMax(1,Cell8)); % Value from 0 to 1
SOC_data_V(:,Cell8) = SOC_data8(:,Voltage_Col);
SOC_data_Z(Cell8) = SOC_data8(1,Z_Col);

%% Cell 9
Cell9 = 9;
SOC_data9 = csvread('Battery_Data_Discharge/1-2-4.csv',2,1);
SOC_data_C(:,Cell9) = SOC_data9(:,Capacity_Col);

SOC_data_CMax(1,Cell9) = SOC_data9(end,Capacity_Col);
SOC_data_C(:,Cell9) = (1-SOC_data_C(:,Cell9)/SOC_data_CMax(1,Cell9)); % Value from 0 to 1
SOC_data_V(:,Cell9) = SOC_data9(:,Voltage_Col);
SOC_data_Z(Cell9) = SOC_data9(1,Z_Col);

%% Cell 10
Cell10 = 10;
SOC_data10 = csvread('Battery_Data_Discharge/1-2-5.csv',2,1);
SOC_data_C(:,Cell10) = SOC_data10(:,Capacity_Col);

SOC_data_CMax(1,Cell10) = SOC_data10(end,Capacity_Col);
SOC_data_C(:,Cell10) = (1-SOC_data_C(:,Cell10)/SOC_data_CMax(1,Cell10)); % Value from 0 to 1
SOC_data_V(:,Cell10) = SOC_data10(:,Voltage_Col);
SOC_data_Z(Cell10) = SOC_data10(1,Z_Col);

%% Cell 11
Cell11 = 11;
SOC_data11 = csvread('Battery_Data_Discharge/1-3-1.csv',2,1);
SOC_data_C(:,Cell11) = SOC_data11(:,Capacity_Col);

SOC_data_CMax(1,Cell11) = SOC_data11(end,Capacity_Col);
SOC_data_C(:,Cell11) = (1-SOC_data_C(:,Cell11)/SOC_data_CMax(1,Cell11)); % Value from 0 to 1
SOC_data_V(:,Cell11) = SOC_data11(:,Voltage_Col);
SOC_data_Z(Cell11) = SOC_data11(1,Z_Col);

%% Cell 12
Cell12 = 12;
SOC_data12 = csvread('Battery_Data_Discharge/1-3-2.csv',2,1);
SOC_data_C(:,Cell12) = SOC_data12(:,Capacity_Col);

SOC_data_CMax(1,Cell12) = SOC_data12(end,Capacity_Col);
SOC_data_C(:,Cell12) = (1-SOC_data_C(:,Cell12)/SOC_data_CMax(1,Cell12)); % Value from 0 to 1
SOC_data_V(:,Cell12) = SOC_data12(:,Voltage_Col);
SOC_data_Z(Cell12) = SOC_data12(1,Z_Col);

%% Cell 13
Cell13 = 13;
SOC_data13 = csvread('Battery_Data_Discharge/1-5-1.csv',2,1);
SOC_data_C(:,Cell13) = SOC_data13(:,Capacity_Col);

SOC_data_CMax(1,Cell13) = SOC_data13(end,Capacity_Col);
SOC_data_C(:,Cell13) = (1-SOC_data_C(:,Cell13)/SOC_data_CMax(1,Cell13)); % Value from 0 to 1
SOC_data_V(:,Cell13) = SOC_data13(:,Voltage_Col);
SOC_data_Z(Cell13) = SOC_data13(1,Z_Col);

%% Cell 14
Cell14 = 14;
SOC_data14 = csvread('Battery_Data_Discharge/1-5-4.csv',2,1);
SOC_data_C(:,Cell14) = SOC_data14(:,Capacity_Col);

SOC_data_CMax(1,Cell14) = SOC_data14(end,Capacity_Col);
SOC_data_C(:,Cell14) = (1-SOC_data_C(:,Cell14)/SOC_data_CMax(1,Cell14)); % Value from 0 to 1
SOC_data_V(:,Cell14) = SOC_data14(:,Voltage_Col);
SOC_data_Z(Cell14) = SOC_data14(1,Z_Col);

%% Cell 15
Cell15 = 15;
SOC_data15 = csvread('Battery_Data_Discharge/2-21-1.csv',2,1);
SOC_data_C(:,Cell15) = SOC_data15(:,Capacity_Col);

SOC_data_CMax(1,Cell15) = SOC_data15(end,Capacity_Col);
SOC_data_C(:,Cell15) = (1-SOC_data_C(:,Cell15)/SOC_data_CMax(1,Cell15)); % Value from 0 to 1
SOC_data_V(:,Cell15) = SOC_data15(:,Voltage_Col);
SOC_data_Z(Cell15) = SOC_data15(1,Z_Col);

%% Cell 16
Cell16 = 16;
SOC_data16 = csvread('Battery_Data_Discharge/2-21-2.csv',2,1);
SOC_data_C(:,Cell16) = SOC_data16(:,Capacity_Col);

SOC_data_CMax(1,Cell16) = SOC_data16(end,Capacity_Col);
SOC_data_C(:,Cell16) = (1-SOC_data_C(:,Cell16)/SOC_data_CMax(1,Cell16)); % Value from 0 to 1
SOC_data_V(:,Cell16) = SOC_data16(:,Voltage_Col);
SOC_data_Z(Cell16) = SOC_data16(1,Z_Col);

%% Cell 17
Cell17 = 17;
SOC_data17 = csvread('Battery_Data_Discharge/2-21-3.csv',2,1);
SOC_data_C(:,Cell17) = SOC_data17(:,Capacity_Col);

SOC_data_CMax(1,Cell17) = SOC_data17(end,Capacity_Col);
SOC_data_C(:,Cell17) = (1-SOC_data_C(:,Cell17)/SOC_data_CMax(1,Cell17)); % Value from 0 to 1
SOC_data_V(:,Cell17) = SOC_data17(:,Voltage_Col);
SOC_data_Z(Cell17) = SOC_data17(1,Z_Col);

%% Cell 18
Cell18 = 18;
SOC_data18 = csvread('Battery_Data_Discharge/2-21-4.csv',2,1);
SOC_data_C(:,Cell18) = SOC_data18(:,Capacity_Col);

SOC_data_CMax(1,Cell18) = SOC_data18(end,Capacity_Col);
SOC_data_C(:,Cell18) = (1-SOC_data_C(:,Cell18)/SOC_data_CMax(1,Cell18)); % Value from 0 to 1
SOC_data_V(:,Cell18) = SOC_data18(:,Voltage_Col);
SOC_data_Z(Cell18) = SOC_data18(1,Z_Col);

%% Cell 19
Cell19 = 19;
SOC_data19 = csvread('Battery_Data_Discharge/2-22-1.csv',2,1);
SOC_data_C(:,Cell19) = SOC_data19(:,Capacity_Col);

SOC_data_CMax(1,Cell19) = SOC_data19(end,Capacity_Col);
SOC_data_C(:,Cell19) = (1-SOC_data_C(:,Cell19)/SOC_data_CMax(1,Cell19)); % Value from 0 to 1
SOC_data_V(:,Cell19) = SOC_data19(:,Voltage_Col);
SOC_data_Z(Cell19) = SOC_data19(1,Z_Col);

%% Cell 20
Cell20 = 20;
SOC_data20 = csvread('Battery_Data_Discharge/2-22-2.csv',2,1);
SOC_data_C(:,Cell20) = SOC_data20(:,Capacity_Col);

SOC_data_CMax(1,Cell20) = SOC_data20(end,Capacity_Col);
SOC_data_C(:,Cell20) = (1-SOC_data_C(:,Cell20)/SOC_data_CMax(1,Cell20)); % Value from 0 to 1
SOC_data_V(:,Cell20) = SOC_data20(:,Voltage_Col);
SOC_data_Z(Cell20) = SOC_data20(1,Z_Col);

%% SOC curve polynomial


% Polynomial coefficients
% Vo = a1*soc^7 + a2*soc^6 + a3*soc^5 + a4*soc^4 + a5*soc^3 + a6*soc^2 +
% a7*soc^1 + a8
n = 7;

[p1,err1] = polyfit(SOC_data_C(:,Cell1),SOC_data_V(:,Cell1),n);
[p2,err2] = polyfit(SOC_data_C(:,Cell2),SOC_data_V(:,Cell2),n);
[p3,err3] = polyfit(SOC_data_C(:,Cell3),SOC_data_V(:,Cell3),n);
[p4,err4] = polyfit(SOC_data_C(:,Cell4),SOC_data_V(:,Cell4),n);
[p5,err5] = polyfit(SOC_data_C(:,Cell5),SOC_data_V(:,Cell5),n); 
[p6,err6] = polyfit(SOC_data_C(:,Cell6),SOC_data_V(:,Cell6),n); 
[p7,err7] = polyfit(SOC_data_C(:,Cell7),SOC_data_V(:,Cell7),n); 
[p8,err8] = polyfit(SOC_data_C(:,Cell8),SOC_data_V(:,Cell8),n); 
[p9,err9] = polyfit(SOC_data_C(:,Cell9),SOC_data_V(:,Cell9),n); 
[p10,err10] = polyfit(SOC_data_C(:,Cell10),SOC_data_V(:,Cell10),n); 
[p11,err11] = polyfit(SOC_data_C(:,Cell11),SOC_data_V(:,Cell11),n); 
[p12,err12] = polyfit(SOC_data_C(:,Cell12),SOC_data_V(:,Cell12),n); 
[p13,err13] = polyfit(SOC_data_C(:,Cell13),SOC_data_V(:,Cell13),n); 
[p14,err14] = polyfit(SOC_data_C(:,Cell14),SOC_data_V(:,Cell14),n); 
[p15,err15] = polyfit(SOC_data_C(:,Cell15),SOC_data_V(:,Cell15),n); 
[p16,err16] = polyfit(SOC_data_C(:,Cell16),SOC_data_V(:,Cell16),n); 
[p17,err17] = polyfit(SOC_data_C(:,Cell17),SOC_data_V(:,Cell17),n); 
[p18,err18] = polyfit(SOC_data_C(:,Cell18),SOC_data_V(:,Cell18),n); 
[p19,err19] = polyfit(SOC_data_C(:,Cell19),SOC_data_V(:,Cell19),n); 
[p20,err20] = polyfit(SOC_data_C(:,Cell20),SOC_data_V(:,Cell20),n); 


%% Plot ALL SOC Curve
% s_i = (0:0.01:1);
% hold on
% 
% plot(s_i,polyval(p1,s_i))
% plot(s_i,polyval(p2,s_i))
% plot(s_i,polyval(p3,s_i))
% plot(s_i,polyval(p4,s_i))
% plot(s_i,polyval(p5,s_i))
% plot(s_i,polyval(p6,s_i))
% plot(s_i,polyval(p7,s_i))
% plot(s_i,polyval(p8,s_i))
% plot(s_i,polyval(p9,s_i))
% plot(s_i,polyval(p10,s_i))
% plot(s_i,polyval(p11,s_i))
% plot(s_i,polyval(p12,s_i))
% plot(s_i,polyval(p13,s_i))
% plot(s_i,polyval(p14,s_i))
% plot(s_i,polyval(p15,s_i))
% plot(s_i,polyval(p16,s_i))
% plot(s_i,polyval(p17,s_i))
% plot(s_i,polyval(p18,s_i))
% plot(s_i,polyval(p19,s_i))
% plot(s_i,polyval(p20,s_i))
% 
% xlabel('État de charge')
% ylabel('Voltage en circuit ouvert (V)')
% title('Courbe de V / SOC ')
% legend('f(soc)','Location','SouthEast')
% hold off

%% Verification courbe
% s_i = (0:0.01:1);
% hold on
% plot(1 - (SOC_data2(:,Capacity_Col)./ SOC_data_CMax(Cell2)),SOC_data2(:,Voltage_Col),'o')
% plot(s_i,polyval(p2,s_i))
% xlabel('État de charge')
% ylabel('Voltage en circuit ouvert (V)')
% title('E0 = f(s) ')
% legend('Données expérimentales','f(soc)','Location','SouthEast')
% hold off

%% Variance Calculation

% Get value for a state of charge of 0.15, 0.55 , 0.9 (Biggest difference in graph)
s = 0.15;
stat_s_15 = [polyval(p1,s),polyval(p2,s),polyval(p3,s),polyval(p4,s),polyval(p5,s),polyval(p6,s),polyval(p7,s),polyval(p8,s),polyval(p9,s),polyval(p10,s),polyval(p11,s),polyval(p12,s),polyval(p13,s),polyval(p14,s),polyval(p15,s),polyval(p16,s),polyval(p17,s),polyval(p18,s),polyval(p19,s),polyval(p20,s)];
s = 0.55;
stat_s_55 = [polyval(p1,s),polyval(p2,s),polyval(p3,s),polyval(p4,s),polyval(p5,s),polyval(p6,s),polyval(p7,s),polyval(p8,s),polyval(p9,s),polyval(p10,s),polyval(p11,s),polyval(p12,s),polyval(p13,s),polyval(p14,s),polyval(p15,s),polyval(p16,s),polyval(p17,s),polyval(p18,s),polyval(p19,s),polyval(p20,s)];
s = 0.75;
stat_s_75 = [polyval(p1,s),polyval(p2,s),polyval(p3,s),polyval(p4,s),polyval(p5,s),polyval(p6,s),polyval(p7,s),polyval(p8,s),polyval(p9,s),polyval(p10,s),polyval(p11,s),polyval(p12,s),polyval(p13,s),polyval(p14,s),polyval(p15,s),polyval(p16,s),polyval(p17,s),polyval(p18,s),polyval(p19,s),polyval(p20,s)];
s = 0.90;
stat_s_90 = [polyval(p1,s),polyval(p2,s),polyval(p3,s),polyval(p4,s),polyval(p5,s),polyval(p6,s),polyval(p7,s),polyval(p8,s),polyval(p9,s),polyval(p10,s),polyval(p11,s),polyval(p12,s),polyval(p13,s),polyval(p14,s),polyval(p15,s),polyval(p16,s),polyval(p17,s),polyval(p18,s),polyval(p19,s),polyval(p20,s)];

var15 = var(stat_s_15);
var55 = var(stat_s_55);
var75 = var(stat_s_75);
var90 = var(stat_s_90);

var_z = var(SOC_data_Z);
