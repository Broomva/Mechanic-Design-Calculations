%Clase Fatiga Dinamica
clear, clc

Sut = 68e3;
Se_ = 0.5*Sut;
Sy = 57e3;

a = 2.7;
b = -0.265;
Ka = a*(Sut/1000)^b;

de = 0.808*sqrt(10*30);
Kb = 1.24*de^-0.107;

Kc = 1;

Kd = 1;

Ke = 0.814;

Kf = 1;

Se = Ka*Kb*Kc*Kd*Ke*Kf*Se_;

D = 15;
d = 10;
r = 2.5;
D/d;
r/d;
Kt = 1.4;
q = 0.92;

Kf = 1+(q*(Kt-1));

sigmab = (10e3*10e-3/2)/((30e-3*(10e-3)^3)/(12));
sigmax = sigmab*Kf; %metrico

sigmaximp = (sigmax*1e-6)*0.145037738007; %imperial (psi)

n = Se/sigmaximp
ny = Sy/sigmaximp
