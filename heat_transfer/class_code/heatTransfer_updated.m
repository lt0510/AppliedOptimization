function F = heatTransfer_updated(x)
% firstly we will assing all the constants used like :
% interet rate
i = 0.07;
% total years
n = 12;
% volumnetric flow rate
Vo = 0.0053;
% even i forgot
Xa = 0.8;
delT = ((65 - x) - (30 - 20)) / log((65 - x)/(30 - 20));
% e == e^1
e = exp(1);
% interest function used 
Ap = (i*(i+1)^n)/((i+1)^n - 1);
K = 2.5*(e^(-3500/(x + 273)));
V = (Vo * Xa)/(K * (1 - Xa));
% writing heat in terms of x so we can use that in objective function 
Q = (1000)*(0.0053)*(4.18)*(x - 20)*1000;
% using delta tm to find the surface area
A = Q/(400*0.8*delT);
PcR = 17000*(V^0.85);
PcE = 12000*(A^0.57);
Uc = (5*(10^6)*Q*1000)/(24*365);
% final objective function checking for all the parameters
F = (PcR*Ap) + (PcE*Ap) + Uc;