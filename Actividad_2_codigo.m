% =====================================================
% Actividad 3: Obtención de Trayectorias Paramétricas
% Alumno: Omar
% =====================================================

clear all; close all; clc;

% --- CONFIGURACIÓN DE ANIMACIÓN ---
paso = 0.01; % Resolución de t

% a) Línea Recta Inclinada
t = -2:paso:2;
x = 2*t;
y = (t - 3*t)/3;
figure(1); subplot(2,5,1); comet(x,y); grid on; axis equal; title('a)');

% b) Cicloide / Trocoide
t = 0:paso:10;
x = t - 3*sin(t);
y = 4 - 3*cos(t);
subplot(2,5,2); comet(x,y); grid on; axis equal; title('b)');

% c) Cardioide / Corazón modificado
t = 0:paso:2*pi;
x = 3*cos(t) - cos(3*t);
y = 4*sin(3*t);
subplot(2,5,3); comet(x,y); grid on; axis equal; title('c)');

% d) Superposición de frecuencias (Spirograph)
t = 0:paso:2*pi;
x = cos(t) + (1/2)*cos(7*t) + (1/3)*sin(17*t);
y = sin(t) + (1/2)*sin(7*t) + (1/3)*cos(17*t);
subplot(2,5,4); comet(x,y); grid on; axis equal; title('d)');

% e) Hipotrocoide
t = 0:paso:2*pi;
x = 17*cos(t) + 7*cos(17+7*t);
y = 17*sin(t) - 7*sin(17*t);
subplot(2,5,5); comet(x,y); grid on; axis equal; title('e)');

% f) Círculo repetido (7 vueltas)
t = 0:paso:14*pi;
x = 2*cos(t);
y = 2*sin(t);
subplot(2,5,6); comet(x,y); grid on; axis equal; title('f)');

% g) Trocoide alargada
t = -2*pi:paso:2*pi;
x = 5*t - 4*sin(t);
y = 5 - 4*cos(t);
subplot(2,5,7); comet(x,y); grid on; axis equal; title('g)');

% h) Epicicloide (Pétalos)
t = 0:paso:2*pi;
x = 4*cos(t) + cos(4*t);
y = 4*sin(t) - sin(4*t);
subplot(2,5,8); comet(x,y); grid on; axis equal; title('h)');

% i) Lissajous (Frecuencia 2:3)
t = 0:paso:2*pi;
x = sin(2*t);
y = sin(3*t);
subplot(2,5,9); comet(x,y); grid on; axis equal; title('i)');

% j) Lissajous (Frecuencia 4:5)
t = 0:paso:2*pi;
x = sin(4*t);
y = sin(5*t);
subplot(2,5,10); comet(x,y); grid on; axis equal; title('j)');
