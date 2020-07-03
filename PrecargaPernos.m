%%
clc
close all
clear all
% precarga de pernos y sujetadores 

at=0.0524; % in2
sp=33000; % psi
sy=36000;% psi
Eb=10.4*10^6; % psi
Em=30*10^6;
d=5/16; % in
p=499.9999430; % carga en uno de los 4 pernos que soportan una tonelada (lb)

D=0.5905511811;%in 1,5cm
lperno=1.181102; %in   3cm
L=0.5905511811;%in 1.5cm

deformacion=p*lperno/(at*Eb)
% CALCULOS en un punto especifico de porcentaje 
porcent=52.33/100;
fi=porcent*sp*at %lb
lcuerda=2*d+0.25 %in
ls=lperno-lcuerda %in
lt=L-ls %in

kb=1/(((lt)/(at*Eb))+((ls)/(((pi*d^2)/4)*Eb))) % lb/in
am1=pi*(D^2-d^2)/4 % in2
km=1/(L/(am1*Em)) % lb/in

c=(kb)/(kb+km)

pb=c*p % lb
pm=(1-c)*p % lb

fb=fi+pb% lb
fm=fi-pm% lb

Saplicado=fb/at % psi

Ny= sy/Saplicado

p0=fi/(1-c)
Nsep=p0/p

porcent=[0:2:100]/100
fi=porcent*sp*at %lb
lcuerda=2*d+0.25 %in
ls=lperno-lcuerda %in
lt=L-ls %in

kb=1/(((lt)/(at*Eb))+((ls)/(((pi*d^2)/4)*Eb))) % lb/in
am1=pi*(D^2-d^2)/4 % in2
km=1/(L/(am1*Em)) % lb/in

c=(kb)/(kb+km)

pb=c*p % lb
pm=(1-c)*p % lb

fb=fi+pb% lb
fm=fi-pm% lb

Saplicado=fb/at % psi


Ny= sy./Saplicado

p0=fi./(1-c)
Nsep=p0/p
figure
uno=porcent./porcent;
plot(porcent,Ny,'b',porcent,Nsep,'r' ,porcent,uno)
grid on
legend('factor de fluencia','factor de separacion')
xlabel('precarga como % decimal de la resistencia de prueba')
ylabel('Factor de seguridad')
%%
clc
close all
clear all
% precarga de pernos y sujetadores 

at=0.0775; % in2
sp=33000; % psi
sy=36000;% psi
Eb=10.4*10^6; % psi
Em=30*10^6;
d=3/8; % in
p=499.9999430; % carga en uno de los 4 pernos que soportan una tonelada (lb)

D=0.5905511811;%in 1,5cm
lperno=1.5748; %in   4cm
L=0.5905511811;%in 1.5cm
deformacion=p*lperno/(at*Eb)
% CALCULOS en un punto especifico de porcentaje 
porcent=39.82/100;
fi=porcent*sp*at %lb
%lcuerda=2*d+0.25 %in
ls=0;%lperno-lcuerda %in
lt=L-ls %in

kb=1/(((lt)/(at*Eb))+((ls)/(((pi*d^2)/4)*Eb))) % lb/in
am1=pi*(D^2-d^2)/4 % in2
km=1/(L/(am1*Em)) % lb/in

c=(kb)/(kb+km)

pb=c*p % lb
pm=(1-c)*p % lb

fb=fi+pb% lb
fm=fi-pm% lb

Saplicado=fb/at % psi

Ny= sy/Saplicado

p0=fi/(1-c)
Nsep=p0/p

porcent=[0:2:100]/100
fi=porcent*sp*at %lb
lcuerda=2*d+0.25 %in
ls=lperno-lcuerda %in
lt=L-ls %in

kb=1/(((lt)/(at*Eb))+((ls)/(((pi*d^2)/4)*Eb))) % lb/in
am1=pi*(D^2-d^2)/4 % in2
km=1/(L/(am1*Em)) % lb/in

c=(kb)/(kb+km)

pb=c*p % lb
pm=(1-c)*p % lb

fb=fi+pb% lb
fm=fi-pm% lb

Saplicado=fb/at % psi


Ny= sy./Saplicado

p0=fi./(1-c)
Nsep=p0/p
figure
uno=porcent./porcent;
plot(porcent,Ny,'b',porcent,Nsep,'r' ,porcent,uno)
grid on
legend('factor de fluencia','factor de separacion')
xlabel('precarga como % decimal de la resistencia de prueba')
ylabel('Factor de seguridad')
%%
