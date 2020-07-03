clear all
clc

unity = input('Metrico->1|Imperial->2: ');
switch (unity)
    case (unity==1)
        f = 6.35e-3;
        
    otherwise
        f = 0.25;
        
end
D = input('Diametro Material: '); %(in)
res = input('Mismo material? (y->1|n->2): ');
switch (res) 
    case (res==1)
        Lm = input('Longitud Material: '); %(in)
        Em = input('Modulo Material: '); %(psi)
        Em1 = Em;
        Em2 = Em;
        Lm1 = Lm/2;
        Lm2 = Lm1;
        
    case (res==2)
        Lm1 = input('Longitud Material 1: '); %(in)
        Lm2 = input('Longitud Material 2: '); %(in)
        Em1 = input('Modulo Material 1: '); %(psi)
        Em2 = input('Modulo Material 2: '); %(psi)
end
        
P = input('Carga: '); %(lb)
d = input('Diametro Sujetador: '); %(in), 18tpi
Eb = input('Modulo Sujetador: ');
At = input('Area Tension: '); %(in^2)
Ab = (pi*d^2)/4; %(in)
Am = ((pi*D^2)/4)-Ab; %(in)
Sp = input('Resistencia de Prueba: '); %(psi)
Sy = input('Resistencia de Fluencia: '); %(psi)

Lperno = input('Longitud del Perno: '); %(in)
Lcuerda = 2*d + f; %(in)
Ls = Lperno-Lcuerda; %(in
Lt = (Lm1+Lm2) - Ls; %(in)

Kb = ((Ls/(Ab*Eb))+(Lt/(At*Eb)))^-1; 
Km = ((Lm1/(Am*Em1))+(Lm2/(Am*Em2)))^-1;
Fi = 0.9*Sp*At;
C = Kb/(Km+Kb);

Pb = P*C;
Pm = (1-C)*P;
Po = Fi/(1-C);

Fm = Fi-Pm;
Fb = Fi+Pb;

Nsep = Po/P
Sap = Fb/At;
Nsy = Sy/Sap





