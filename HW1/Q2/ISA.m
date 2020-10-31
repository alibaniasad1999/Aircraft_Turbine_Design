function [P_a, T_a] = ISA(altitude)
P_0 = 2116.22;
g_0 = 32.17405;
T_0 = 518.67;
rho_0 = 0.0023769;
R = 1716.55;
h = 1:1:36089;
a = -0.00356616;
T = T_0+a*h;
theta = T/T_0;
P = P_0*((theta).^(-g_0/(a*R)));
% delta = (theta).^(-g_0/(a*R));
rho = rho_0*((theta).^(-(g_0/(a*R)+1)));
% sigma = (theta).^(-(g_0/(a*R)+1));
h_1 = (h(length(h))+1):1:65616;
T_1(1:length(h_1)) = T(length(T));
P_1 = P(length(P))*exp(g_0./(R*T_1).*(h_1(1)-h_1));
rho_1 = (P_1)./(R*T_1);
% total
T_t = [T, T_1];
h_t = [h, h_1];
P_t = [P, P_1];
P_a = P_t(altitude);
T_a = T_t(altitude);
end