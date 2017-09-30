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
fc_desired  = 10;
cutoff_int_needed = fc_desired / fr;

cutoff_int = 2;
fc = cutoff_int/N * fs;

% Filter group delay
Group_delay = (N-1)/2 * 1/fs;

% Easy Method
FIR_Coef = fir1(N,fc/(0.5*fs),'low');
%fvtool(FIR_Coef_m);

% ADC
adc_ref = 4.85;
adc_max = 2^12-1;
adc_lsb = adc_ref/(adc_max+1);
% 
% Error detection delay 
% 

% Partir un timer
% Additionner l'erreur (Faire une integrale)
% si le resultat de l'intégrale est > 0 apres x ms, declenche l'erreur

%
% Balancing
%

% MODEL %
% Number of bit for PWM duty cycle
pwm_res = 5;
pwm_min = 0;
pwm_max = 2^pwm_res-1;
pwm_resolution = 1/(pwm_max+1);

% Charging current in balancing mode [A]
Icharge = 300E-3;

% Bleeding resistor
Rb = 10;

% Maximum bleeding current
Ibleed_max = 4.2/Rb;

% Battery ESR [Ohm]
ESR = 10E-3;

% Time constant
td = 25e-6;

% Target battery voltage [V]
Vtarget = 4.15;

%%%%%%%%%%%%%%%% Q0 et Q1 Calculation %%%%%%%%%%%%%%%%
% Specs : 
% Sampling time
T = 1/fs;
% Response time 
Trd = 1000E-3;

% Overshoot (%)
Md = 0.1 / 100;

% zeta
zeta = -log(Md)/((log(Md)^2+pi^2)^0.5);

% time constant wn(rad/s)
if zeta > 0.69
    wn = exp(1.6341*zeta)*0.9257/Trd;
else
    wn = -1/(zeta*Trd) * log(0.05*(1-zeta^2)^0.5);
end

% 
% Regulator calculated with lithium-ion cell time constant 
%
Q0=(2*pwm_max*exp(T/td)*cos(T*wn*sqrt(1-zeta^2))-pwm_max*exp(T*wn*zeta+T/td)-pwm_max*exp(T*wn*zeta))/(Ibleed_max*exp(T*wn*zeta)-Ibleed_max*exp(T*wn*zeta+T/td));
Q1=(pwm_max*exp(2*T*wn*zeta)-pwm_max*exp(T/td))/(Ibleed_max*exp(2*T*wn*zeta)-Ibleed_max*exp(2*T*wn*zeta+T/td));
% PID
bal_kp = (Q0-Q1)/2;
bal_ki= (Q1+Q0)/T;
bal_kd = 0;

% Inversion de phase
if(bal_kp > 0)
    bal_kp = -1*bal_kp;
end

if(bal_ki > 0)
    bal_ki = -1*bal_ki;
end



