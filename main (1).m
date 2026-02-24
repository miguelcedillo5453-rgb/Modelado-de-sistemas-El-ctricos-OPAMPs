clear
close all
clc;

R1 = 1000; R2 = 1000;      
C1 = 0.1e-6; C2 = 0.1e-6;  
R3 = 10000; R4 = 15000;     
  
K = 1 + (R4/R3);          
wn = 1/(R1*C1);           
    
tspan = [0 0.005];         
y0 = [0; 0];               
    
[t, y] = ode45(@(t, y) Sistemas_electricos(t, y, K, wn), tspan, y0);
    
figure;
plot(t, y(:,1), 'LineWidth', 2, 'Color', 'b');
grid on;
title('Respuesta al Escalón Unitario (ode45) - Sistema Dinámico Figura 1');
xlabel('Tiempo (s)');
ylabel('Voltaje de Salida V_o (V)');
legend('Solución Ecuación Diferencial');


