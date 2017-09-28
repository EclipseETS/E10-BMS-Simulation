%
% Slave module model
%

% 
% FIR coefficient calculator for all 8 modules voltage measurement
% 

% Low Pass filter
% Window Design Method

% Sampling frequency
fs = 100;

% N samples
N = 11;

% Frequency resolution
fr = fs/N;

% Cutoff frequency
fc_desired  = 2;
cutoff_int_needed = fc_desired / fr;

cutoff_int = 1;
fc = cutoff_int/N * fs;

% Filter group delay
Group_delay = (N-1)/2 * 1/fs;

% Easy Method
FIR_Coef_m = fir1(N,fc/(0.5*fs),'low');
fvtool(FIR_Coef_m);