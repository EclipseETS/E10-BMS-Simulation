%% Battery Impedance
% Number of cell per module
N_Cell = 1;

tc1 = 0.34;
tc2 = 99.9;

R1 = 0.0227 / N_Cell;
C1 = 6.9411e3 * N_Cell;

R2 = 0.0103 / N_Cell;
C2 = 8.8929 * N_Cell;

R0 = 0.0715 / N_Cell;

a1 = 140.8;
a2 = -492.4;
a3 = 691.2;
a4 = -499.8;
a5 = 199.1;
a6 = -43.32;
a7 = 5.546;
a8 = 3.111;

vsoc_poly = [a1,a2,a3,a4,a5,a6,a7,a8]; % Real bat

bat_poly = p2; % Testing with different curve 

%% Parameters
Capacity_max = 3113 * N_Cell;
Voltage_max = 4.2;



