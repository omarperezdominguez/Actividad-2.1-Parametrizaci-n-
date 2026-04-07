% Actividad 3: Polígonos 
% Alumno: Omar

clear all; close all; clc;

% Definimos el color naranja manualmente (R=1, G=0.5, B=0)
naranja = [1, 0.5, 0];

% --- FILA 1: POLÍGONOS REGULARES ---

% 1. Diamante (n=4 lados)
t4 = linspace(0, 2*pi, 5); 
subplot(2,3,1); 
plot(cos(t4), sin(t4), 'Color', naranja, 'LineWidth', 1.5); 
grid on; axis equal; title('Diamante (n=4)');

% 2. Hexágono (n=6 lados)
t6 = linspace(0, 2*pi, 7); 
subplot(2,3,2); 
plot(cos(t6), sin(t6), 'Color', naranja, 'LineWidth', 1.5); 
grid on; axis equal; title('Hexágono (n=6)');

% 3. Polígono de 14 lados
t14 = linspace(0, 2*pi, 15); 
subplot(2,3,3); 
plot(cos(t14), sin(t14), 'Color', naranja, 'LineWidth', 1.5); 
grid on; axis equal; title('Polígono (n=14)');

% --- FILA 2: ROSAS DE GRANDI ---

% 4. Rosa de 7 pétalos (Escala 50)
theta = 0:0.01:pi; 
r1 = 50 * cos(7 * theta);
subplot(2,3,4); 
plot(r1.*cos(theta), r1.*sin(theta), 'Color', naranja);
grid on; axis equal; title('Rosa (k=7)');

% 5. Rosa de 11 pétalos (Escala 5)
r2 = 5 * cos(11 * theta);
subplot(2,3,5); 
plot(r2.*cos(theta), r2.*sin(theta), 'Color', naranja);
grid on; axis equal; title('Rosa (k=11)');

% 6. Rosa Densa (k=51)
theta_fino = 0:0.001:pi;
r3 = 5 * cos(51 * theta_fino);
subplot(2,3,6); 
plot(r3.*cos(theta_fino), r3.*sin(theta_fino), 'Color', naranja);
grid on; axis equal; title('Rosa Densa (k=51)');