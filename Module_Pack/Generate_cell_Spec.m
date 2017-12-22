sigma_mult = 1;

%% Generate R0 normal distribution
Z_mean = mean(SOC_data_Z);
Zsigma = var_z^0.5;
R0_norm = normrnd(Z_mean,Zsigma*sigma_mult,1,Nb_cell_module); % Generate normal distribution

%% Generate Capacity normal distribution
[Cmuhat,Csigmahat] = normfit(SOC_data_CMax);
C_mean = mean(SOC_data_CMax);
Capacity_max_norm = normrnd(C_mean,Csigmahat*sigma_mult,1,Nb_cell_module); % Generate normal distribution

vpa(Capacity_max_norm,4)
vpa(R0_norm,4)