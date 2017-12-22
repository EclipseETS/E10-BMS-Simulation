Data_Stats_SOC_Curve

Nb_cell_module = 13; % Number of cell per module
% Variables init
cell_poly = zeros(Nb_cell_module,length(p1));
Capacity_max = zeros(1,Nb_cell_module);
R0 = zeros(1,Nb_cell_module);
R1 = zeros(1,Nb_cell_module);
C1 = zeros(1,Nb_cell_module);
R2 = zeros(1,Nb_cell_module);
C2 = zeros(1,Nb_cell_module);


%% Cell 1
cell = 1;
cell_poly(cell,:) = p1;    % Curve V / soc
R0(cell) = 55e-3;        % Series Resistor
R1(cell) = 0.0227;       % RC Circuit
C1(cell) = 6.9411e3;     %t1 = ~100s

R2(cell) = 0.0103;       %t2 = 0.3s
C2(cell) = 8.8929;

Capacity_max(cell) = 3110;

%% Cell 2
cell = 2;
cell_poly(cell,:) = p2;    % Curve V / soc
R0(cell) = 50e-3;        % Series Resistor
R1(cell) = 0.0227;       % RC Circuit
C1(cell) = 6.9411e3;     %t1 = ~100s

R2(cell) = 0.0103;       %t2 = 0.3s
C2(cell) = 8.8929;

Capacity_max(cell) = 3110;

%% Cell 3
cell = 3;
cell_poly(cell,:) = p2;    % Curve V / soc
R0(cell) = 50e-3;        % Series Resistor
R1(cell) = 0.0227;       % RC Circuit
C1(cell) = 6.9411e3;     %t1 = ~100s

R2(cell) = 0.0103;       %t2 = 0.3s
C2(cell) = 8.8929;

Capacity_max(cell) = 3110;

%% Cell 4
cell = 4;
cell_poly(cell,:) = p2;    % Curve V / soc
R0(cell) = 50e-3;        % Series Resistor
R1(cell) = 0.0227;       % RC Circuit
C1(cell) = 6.9411e3;     %t1 = ~100s

R2(cell) = 0.0103;       %t2 = 0.3s
C2(cell) = 8.8929;

Capacity_max(cell) = 3110;

%% Cell 5
cell = 5;
cell_poly(cell,:) = p2;    % Curve V / soc
R0(cell) = 50e-3;        % Series Resistor
R1(cell) = 0.0227;       % RC Circuit
C1(cell) = 6.9411e3;     %t1 = ~100s

R2(cell) = 0.0103;       %t2 = 0.3s
C2(cell) = 8.8929;

Capacity_max(cell) = 3110;

%% Cell 6
cell = 6;
cell_poly(cell,:) = p2;    % Curve V / soc
R0(cell) = 50e-3;        % Series Resistor
R1(cell) = 0.0227;       % RC Circuit
C1(cell) = 6.9411e3;     %t1 = ~100s

R2(cell) = 0.0103;       %t2 = 0.3s
C2(cell) = 8.8929;

Capacity_max(cell) = 3110;

%% Cell 7
cell = 7;
cell_poly(cell,:) = p2;    % Curve V / soc
R0(cell) = 50e-3;        % Series Resistor
R1(cell) = 0.0227;       % RC Circuit
C1(cell) = 6.9411e3;     %t1 = ~100s

R2(cell) = 0.0103;       %t2 = 0.3s
C2(cell) = 8.8929;

Capacity_max(cell) = 3110;

%% Cell 8
cell = 8;
cell_poly(cell,:) = p2;    % Curve V / soc
R0(cell) = 50e-3;        % Series Resistor
R1(cell) = 0.0227;       % RC Circuit
C1(cell) = 6.9411e3;     %t1 = ~100s

R2(cell) = 0.0103;       %t2 = 0.3s
C2(cell) = 8.8929;

Capacity_max(cell) = 3110;

%% Cell 9
cell = 9;
cell_poly(cell,:) = p2;    % Curve V / soc
R0(cell) = 50e-3;        % Series Resistor
R1(cell) = 0.0227;       % RC Circuit
C1(cell) = 6.9411e3;     %t1 = ~100s

R2(cell) = 0.0103;       %t2 = 0.3s
C2(cell) = 8.8929;

Capacity_max(cell) = 3110;

%% Cell 10
cell = 10;
cell_poly(cell,:) = p2;    % Curve V / soc
R0(cell) = 50e-3;        % Series Resistor
R1(cell) = 0.0227;       % RC Circuit
C1(cell) = 6.9411e3;     %t1 = ~100s

R2(cell) = 0.0103;       %t2 = 0.3s
C2(cell) = 8.8929;

Capacity_max(cell) = 3110;

%% Cell 11
cell = 11;
cell_poly(cell,:) = p2;    % Curve V / soc
R0(cell) = 50e-3;        % Series Resistor
R1(cell) = 0.0227;       % RC Circuit
C1(cell) = 6.9411e3;     %t1 = ~100s

R2(cell) = 0.0103;       %t2 = 0.3s
C2(cell) = 8.8929;

Capacity_max(cell) = 3110;

%% Cell 12
cell = 12;
cell_poly(cell,:) = p2;    % Curve V / soc
R0(cell) = 50e-3;        % Series Resistor
R1(cell) = 0.0227;       % RC Circuit
C1(cell) = 6.9411e3;     %t1 = ~100s

R2(cell) = 0.0103;       %t2 = 0.3s
C2(cell) = 8.8929;

Capacity_max(cell) = 3110;

%% Cell 13
cell = 13;
cell_poly(cell,:) = p2;    % Curve V / soc
R0(cell) = 50e-3;        % Series Resistor
R1(cell) = 0.0227;       % RC Circuit
C1(cell) = 6.9411e3;     %t1 = ~100s

R2(cell) = 0.0103;       %t2 = 0.3s
C2(cell) = 8.8929;

Capacity_max(cell) = 3110;
