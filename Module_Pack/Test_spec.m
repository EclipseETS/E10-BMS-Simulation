Module_Spec
% Run Generate_cell_Spec before. This is in another file to keep the same
% R0 and capacity vectors.

Scenario = 10;
initial_SOC = 100; % SOC [%]

% Scenario 1
% Capacity : same 
% Z : different
if Scenario == 1
    C_mean = mean(SOC_data_CMax);
    Capacity_max(1:end) = C_mean;
    R0 = R0_norm;
end

% Scenario 2
% Capacity : different
% Z : Same
if Scenario == 2
    Capacity_max = Capacity_max_norm;
    R0(1:end) = Z_mean; 
end

% Scenario 3
% Capacity : different
% Z : different
if Scenario == 3
    Capacity_max = Capacity_max_norm;
    R0 = R0_norm;
end

% Scenario 4
% Capacity : same 
% Z : same
if Scenario == 4
    Capacity_max(1:end) = C_mean;
    R0(1:end) = Z_mean;
end

% Scenario 5
% Capacity : data 
% Z : data
if Scenario == 5
    Capacity_max(1:end) = SOC_data_CMax(1:Nb_cell_module);
    R0(1:end) = SOC_data_Z(1:Nb_cell_module);
end

% Scenario 6
% Capacity : sigma 1 
% Z : sigma 1
if Scenario == 6
    Capacity_max = Capacity_max_norm1;
    R0 = R0_norm1;
end

% Scenario 7
% Capacity : sigma 1 
% Z : sigma 2
if Scenario == 7
    Capacity_max = Capacity_max_norm1;
    R0 = R0_norm2;
end

% Scenario 8
% Capacity : sigma 1 
% Z : sigma 3
if Scenario == 8
    Capacity_max = Capacity_max_norm1;
    R0 = R0_norm3;
end

% Scenario 9
% Capacity : sigma 2 
% Z : sigma 1
if Scenario == 9
    Capacity_max = Capacity_max_norm2;
    R0 = R0_norm1;
end

% Scenario 10
% Capacity : sigma 3 
% Z : sigma 1
if Scenario == 10
    Capacity_max = Capacity_max_norm3;
    R0 = R0_norm1;
end
% vpa(Capacity_max_norm1,4)
% vpa(R0_norm1,4)

I_discharge = C_mean;

%% Results Module

%% sigma * 1
% Capacity [mA h] : [ 3123.0, 3140.0, 3116.0, 3171.0, 3248.0, 3162.0, 3198.0, 3166.0, 3145.0, 3253.0, 3055.0, 3115.0, 3209.0]
% R0 [m ohm] : [ 75.08, 60.87, 47.42, 47.62, 49.92, 49.78, 55.23, 66.47, 54.8, 53.82, 47.18, 62.58, 60.17]

% Resultat capacite Ah, I = 1C (3.14A), Fixed step : 0.1s
% 1 : 15.51
% 2 : 15.3
% 3 : 15.16
% 4 : 15.22

%% sigma * 2
% Capacity [mA h] : [ 3132.0, 3154.0, 3183.0, 3286.0, 3246.0, 3041.0, 3044.0, 3243.0, 3204.0, 3158.0, 3136.0, 3200.0, 3093.0]
% R0 [m ohm] : [ 55.21, 64.75, 77.04, 56.48, 34.13, 44.21, 69.06, 59.42, 73.38, 65.79, 38.07, 78.18, 40.54]

% Resultat capacite Ah, I = 1C (3.14A), Fixed step : 0.1s
% 1 : 15.65
% 2 : 15.35
% 3 : 15.63
% 4 : 15.22

%% sigma * 3

% Capacity [mA h] : [ 3169.0, 3220.0, 3354.0, 2694.0, 2968.0, 2831.0]

% R0 [m ohm] : [ 25.62, 36.32, 56.07, 7.271, 43.47, 104.8]

% Resultat capacite Ah, I = 1C (3.14A), Fixed step : 0.01s
% 1 : 18.84     Sum : 18.85     courant max : 
% 2 : 18.2      Sum : 18.236
% 3 : 18.22     Sum : 18.236
% 4 : 18.85     Sum : 18.85

%% Data

% Capacity [mA h] : [ 3119.0, 3164.0, 3074.0, 3168.0, 3108.0, 3146.0, 3062.0, 3152.0, 3110.0, 3167.0, 3064.0, 3137.0, 3125.0]

% R0 [m ohm] : [ 61.0, 58.0, 57.0, 58.0, 62.0, 59.0, 88.0, 51.0, 59.0, 58.0, 59.0, 66.0, 60.0]

% Resultat capacite Ah, I = 1C (3.14A), Fixed step : 0.1s
% 5 : 10.7

%% Scenario 6 - 10

% Capacity [mA h] : 
% sigma 1 : [ 3102.0, 3110.0, 3122.0, 3212.0, 3129.0, 3241.0]
% sigma 2 : [ 3235.0, 3089.0, 3083.0, 3209.0, 3295.0, 2988.0]
% sigma 3 : [ 3269.0, 2948.0, 3151.0, 3257.0, 3008.0, 2790.0]

% R0 [m ohm] :
% sigma 1 : [ 69.0, 67.74, 54.95, 53.51, 57.49, 55.89]
% sigma 2 : [ 41.96, 43.68, 88.52, 79.4, 67.22, 43.51]
% sigma 3 : [ 66.18, 37.29, 57.67, 88.06, 36.87, 68.71]

% Resultat capacite Ah, I = 1C (3.14A), Fixed step : 0.01s
% 6 : 18.91     Sum : 18.9158    i_max : 1.0044    0.7830    0.8470    0.8860    0.8311    0.8759
% 7 : 18.90     Sum : 18.9158    i_max : 1.0070    0.9797    0.7422    0.7907    0.8043    1.0294
% 8 : 18.60     Sum : 18.9158    i_max : 1.0069    2.8090    2.2267    2.1420    2.8383    2.2650
% 9 : 18.62     Sum : 18.8980    i_max : 0.9996    2.1055    2.2380    2.3242    2.3229    2.1787
% 10 : 18.40     Sum : 18.4240    i_max : 1.0039    0.7729    0.8983    0.9492    0.8330    0.8042

%% Courant Max
max_i_cell = max([Cell1_sim.Current__A_.Data(1:end-1000),Cell2_sim.Current__A_.Data(1:end-1000),Cell3_sim.Current__A_.Data(1:end-1000),Cell4_sim.Current__A_.Data(1:end-1000),Cell5_sim.Current__A_.Data(1:end-1000),Cell6_sim.Current__A_.Data(1:end-1000)]);
%% Plot Cell Current
% figure
% hold on
% plot(Cell1_sim.Current__A_.Time(1:end-1000),Cell1_sim.Current__A_.Data(1:end-1000))
% plot(Cell2_sim.Current__A_.Time(1:end-1000),Cell2_sim.Current__A_.Data(1:end-1000))
% plot(Cell3_sim.Current__A_.Time(1:end-1000),Cell3_sim.Current__A_.Data(1:end-1000))
% plot(Cell4_sim.Current__A_.Time(1:end-1000),Cell4_sim.Current__A_.Data(1:end-1000))
% plot(Cell5_sim.Current__A_.Time(1:end-1000),Cell5_sim.Current__A_.Data(1:end-1000))
% plot(Cell6_sim.Current__A_.Time(1:end-1000),Cell6_sim.Current__A_.Data(1:end-1000))
% hold off