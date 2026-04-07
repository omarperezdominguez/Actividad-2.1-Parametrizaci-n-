% =====================================================
% Actividad 2.1: Parametrización de Trayectorias
% =====================================================

clear all; close all; clc;

%% TRAYECTORIA 1: El Círculo (Radio = 2)
% Se define t de 0 a 2*pi para cerrar el ciclo completo.
t1 = 0:0.01:2*pi;
x1 = 2 * cos(t1);
y1 = 2 * sin(t1);

figure(1)
comet(x1, y1) % Simula el movimiento temporal
grid on; axis equal;
title('1. Trayectoria Circular (R=2)');
xlabel('x [m]'); ylabel('y [m]');

%% TRAYECTORIA 2: Figura en Infinito (Lissajous)
% La clave aquí es que la frecuencia en Y es el doble que en X.
t2 = 0:0.01:2*pi;
x2 = sin(t2); 
y2 = sin(2*t2); % Frecuencia doble genera el cruce central

figure(2)
comet(x2, y2)
grid on; axis equal;
title('2. Curva de Lissajous (Infinito)');
xlabel('x [m]'); ylabel('y [m]');

%% TRAYECTORIA 3: Parametrización Compleja (Epitrocoide)
% Se combinan dos movimientos circulares: uno lento y uno rápido (15 veces más)
t3 = 0:0.005:2*pi;  
x3 = 1.5 * cos(t3) + cos(15 * t3);
y3 = 1.5 * sin(t3) + sin(15 * t3);

figure(3)
comet(x3, y3)
grid on; axis equal;
title('3. Epitrocoide (Spirograph)');
xlabel('x [m]'); ylabel('y [m]');