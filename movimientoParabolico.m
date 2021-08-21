clc;
clear all;

v=input('velocidad: ');
fprintf('\n');

beta=input('angulo de velocidad: ');
fprintf('\n');

theta=input('angulo de la pendiente: ');
fprintf('\n');

yo=input('y inicial: ');
fprintf('\n');

xo=input('x inicial: ');
fprintf('\n');

%% operaciones y grafica %%

vy=v*sind(beta);

vx=v*cosd(theta);

g=9.81;

%% timepo final
t=(tand(theta)-vy/vx)*(-2*vx^2/g)*(1/vx);
%% intervalo de tiempo
ti=linspace(0,t);
%% posicion en eje horizontal
x=xo+ti.*vx;% a cada valor de ti se le multiplica vx
%% posicion en eje vertical
y=yo+ti.*vy-(ti.^2).*(g/2);
% pintar o dibujar
plot(x,y);
hold on;

xmax=xo+t*vx;

ymax=yo+t*vy-(t.^2)*(g/2);

d=sqrt(xmax^2+ymax^2);

fprintf("y maxima es: ");
disp(ymax);
fprintf("\n");

fprintf("x maxima es: ");
disp(d);
fprintf("\n");

fprintf("tiempo total es: ");
disp(t);
fprintf("\n");

xp = linspace(0,xmax);
yp = xp.*tand(theta);

plot(xp,yp);
hold on;

%% Datos del experimento
%% v. 4,29, 
%% av. 42, 
%% ap.0, 
%% yi=0.102, 
%% xi=0.152
