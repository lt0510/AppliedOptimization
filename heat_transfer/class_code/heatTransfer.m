function F = heatTransfer(x)
i = 0.07;
n = 12;
Vo = 5000;
Xa = 0.8;
delT = ((65 - x) - (35-30)) / log((65 - x)/(35-30));
e = exp(1);
Ap = (i*(i+1)^n)/((i+1)^n - 1);
K = 2.5*(e^(-3500/x));
V = (Vo - Xa)/(K*(1 - Xa));
Q = (1000)*(5000)*(4.2)*(x - 30);
A = Q/(400*0.8*delT);
PcR = 17000*(V^0.85);
PcE = 12000*(A^0.7);
Uc = 5*(10^6)*Q*24*365;
F = (PcR*Ap) + (PcE*Ap) + Uc;