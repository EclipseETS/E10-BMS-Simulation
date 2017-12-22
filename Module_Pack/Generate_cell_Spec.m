sigma_mult = 3;
Nb_cell_module = 6;
%% Generate R0 normal distribution
Z_mean = mean(SOC_data_Z);
Zsigma = var_z^0.5;
R0_norm = normrnd(Z_mean,Zsigma*sigma_mult,1,Nb_cell_module); % Generate normal distribution
R0_norm1 = normrnd(Z_mean,Zsigma*1,1,Nb_cell_module); % Generate normal distribution
R0_norm2 = normrnd(Z_mean,Zsigma*2,1,Nb_cell_module); % Generate normal distribution
R0_norm3 = normrnd(Z_mean,Zsigma*3,1,Nb_cell_module); % Generate normal distribution

%% Generate Capacity normal distribution
[Cmuhat,Csigmahat] = normfit(SOC_data_CMax);
C_mean = mean(SOC_data_CMax);
Capacity_max_norm = normrnd(C_mean,Csigmahat*sigma_mult,1,Nb_cell_module); % Generate normal distribution
Capacity_max_norm1 = normrnd(C_mean,Csigmahat*1,1,Nb_cell_module); % Generate normal distribution
Capacity_max_norm2 = normrnd(C_mean,Csigmahat*2,1,Nb_cell_module); % Generate normal distribution
Capacity_max_norm3 = normrnd(C_mean,Csigmahat*3,1,Nb_cell_module); % Generate normal distribution

% vpa(Capacity_max_norm,4)
% vpa(R0_norm,4)
% 
% vpa(Capacity_max_norm1,4)
% vpa(R0_norm1,4)