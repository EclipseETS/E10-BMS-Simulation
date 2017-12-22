Module_Spec
% Run Generate_cell_Spec before. This is in another file to keep the same
% R0 and capacity vectors.

Scenario = 5;
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

I_discharge = C_mean;

%% Results Module

%% sigma * 1
% Capacity [mA h] : [ 3120.0, 3074.0, 3096.0, 3140.0, 3122.0, 3127.0, 3162.0, 3176.0, 3161.0, 3095.0, 3183.0, 3170.0, 3153.0]
% R0 [m ohm] : [ 52.88, 52.74, 48.67, 71.34, 56.13, 53.32, 47.48, 68.79, 65.87, 54.34, 66.53, 54.93, 55.14]

% Resultat capacite Ah, I = 1C (3.14A), Fixed step : 0.1s
% 1 : 10.9
% 2 : 10.69
% 3 : 10.75
% 4 : 10.74

%% sigma * 2
% Capacity [mA h] : [ 3101.0, 3082.0, 3157.0, 3074.0, 3168.0, 3054.0, 3200.0, 3124.0, 2933.0, 3160.0, 3236.0, 3268.0, 3164.0]
% R0 [m ohm] : [ 44.81, 105.3, 51.02, 48.67, 66.54, 43.08, 49.26, 36.24, 56.33, 42.31, 65.23, 62.2, 48.47]

% Resultat capacite Ah, I = 1C (3.14A), Fixed step : 0.1s
% 1 : 11.24
% 2 : 10.6
% 3 : 11.13
% 4 : 10.74

%% sigma * 3

% Capacity [mA h] : 3146.8    3280.8    3113.0    2986.9    3232.3    3251.8
% 3020.7    3360.3    2971.1    3009.9    3221.4    2812.7    2939.5

% R0 [m ohm] : 67.9220   76.0266   33.2809   83.5764   20.0799   48.3321
% 73.1333   48.9828   69.8515   72.1225   45.0710   76.9832    65.3564

% Resultat capacite Ah, I = 1C (3.14A), Fixed step : 0.1s
% 1 : 11.22
% 2 : 10.77
% 3 : 11.29
% 4 : 10.74

%% Data

% Capacity [mA h] : [ 3119.0, 3164.0, 3074.0, 3168.0, 3108.0, 3146.0, 3062.0, 3152.0, 3110.0, 3167.0, 3064.0, 3137.0, 3125.0]

% R0 [m ohm] : [ 61.0, 58.0, 57.0, 58.0, 62.0, 59.0, 88.0, 51.0, 59.0, 58.0, 59.0, 66.0, 60.0]

% Resultat capacite Ah, I = 1C (3.14A), Fixed step : 0.1s
% 5 : 10.7

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