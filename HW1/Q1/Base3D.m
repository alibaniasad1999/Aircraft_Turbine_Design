%% initial condition
altitude = 0;
%ambient pressure in pascal
P_a = 101352.9;
%ambient temperature in Kelvin
T_a = 518*5/9;
%heating value of the fuel in kj/kg
Q = 44194;
%specific heat in kj/(kgC)
C_p = 1.004832;
%turbine inlet temperature
TIT = 2400*5/9;
%heat capacity ratio
gamma = 1.4;
%versal gas constant value of air in J/kg·K
R = 287;
[CPR, M_f] = meshgrid(1:0.1:30, 0:0.1:2);
%% cycle
u_i = M_f*sqrt(gamma*T_a*R);
T_02 = T_a*(1+(gamma-1)/2*M_f.^2);
P_2 = P_a*(T_02/T_a).^(gamma/(gamma-1));
P_3 = P_2.*CPR;
T_03 = T_02.*CPR.^((gamma-1)/gamma);
P_4 = P_3;
f = (TIT./T_03-1)./(Q./(C_p*T_03)-TIT./T_03);
T_05 = TIT-(T_03-T_02);
P_5 = P_4.*(T_05/TIT).^(gamma/(gamma-1));
u_e = sqrt(2*gamma/(gamma-1)*R*T_05.*(1-(P_a./P_5).^((gamma-1)/gamma)));
specificThrust = ((1+f).*u_e-u_i);
