%% Experimental Data

SOC_data = [
    1,4.2;
    90,4.1;
    527,4;
    826,3.9;
    1229,3.8;
    1595,3.7;
    1982,3.6;
    2408,3.5;
    2757,3.4;
    2950,3.3;
    3068,3.2;
    3113,3.1;
    3162,3.0];  % Ajout

Capacity_max = SOC_data(end,1);

%% Interpolation of data : A Revoir
dxV = linspace(1,Capacity_max,100);
dxC = linspace(1,length(SOC_data(:,1)),100);
SOC_V = interp1(SOC_data(:,1),SOC_data(:,2),dxV);
SOC_C = interp1(SOC_data(:,1),dxC);

%% SOC Curve : A Revoir

%Capacity in %
SOC_Cp = 1-SOC_C/Capacity_max;

% figure
% h1 = axes;
% plot(SOC_Cp,SOC_V)
% set(h1, 'Xdir', 'reverse')

%% SOC Lookuptable : A Revoir
SOC_lt_V = fliplr(SOC_V);
SOC_lt = [SOC_Cp(:),SOC_V(:)];


%% SOC curve polynomial
SOC_data_C = (1-SOC_data(:,1)/Capacity_max); % Value from 0 to 1
SOC_data_V = SOC_data(:,2);

% Polynomial coefficients
% Vo = a1*soc^7 + a2*soc^6 + a3*soc^5 + a4*soc^4 + a5*soc^3 + a6*soc^2 +
% a7*soc^1 + a8

a1 = 140.8;
a2 = -492.4;
a3 = 691.2;
a4 = -499.8;
a5 = 199.1;
a6 = -43.32;
a7 = 5.546;
a8 = 3.111;
vsoc_poly_original = [a1 a2 a3 a4 a5 a6 a7 a8];

% n = 7;
% [vsoc_poly_original,err1] = polyfit(SOC_data_C,SOC_data_V,n);


%% Plot
% s_i = (0:0.01:1);
% hold on
% plot(1.-(SOC_data(:,1)./Capacity_max),SOC_data(:,2),'o')
% plot(s_i,polyval(fsoc,s_i))
% xlabel('État de charge')
% ylabel('Voltage en circuit ouvert (V)')
% title('Courbe de V / SOC ')
% legend('Données expérimentales','f(soc)','Location','SouthEast')
% hold off