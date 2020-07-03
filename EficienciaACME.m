% Carlos David Escobar
% 20133615027
% Fundamentos de Dise?o Mecatronico

clear all, clc

%Definicion de Constantes
Potencia = 1000 %(N)
DiametroPrimitivo = 0.1270 %(m)
alpha = 0.2530727 %(rad)

%i para Miu, j para Lamda
for i=[0:0.025:1]
    for j=[0:0.025:1]
        Paso = pi*DiametroPrimitivo*tan(j); %Calculo del Paso
        
        %Calculo de Torques
        Torqueu = ((Potencia*DiametroPrimitivo)/2)*((i*pi*DiametroPrimitivo + Paso*cos(alpha))/(pi*DiametroPrimitivo*cos(alpha) - i*Paso)); %Subida
        Torqued = ((Potencia*DiametroPrimitivo)/2)*((i*pi*DiametroPrimitivo - Paso*cos(alpha))/(pi*DiametroPrimitivo*cos(alpha) + i*Paso)); %Bajada

        %Calculo de Eficiencias
        Eficienciau = (Potencia*Paso)/(Torqueu*2*pi); %Subida
        Eficienciad = (Potencia*Paso)/(Torqued*2*pi); %Bajada
        
        %Grafico
        plot3(j,i,Eficienciau,'k*')
        title('Eficiencia Subida Tornillo ACME'), grid on
        xlabel('Lambda(rad)'), ylabel('Coef. Friccion(Miu)'), zlabel('Eficiencia')
        hold on
    end
end