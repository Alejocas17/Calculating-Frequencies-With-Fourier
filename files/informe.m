%% LABORATORIO DE FUNDAMENTOS DE CONTROL: MATLAB
% % ALEJANDRO ANTONIO CASTILLO GIL              201722422-3744  
% DAVID FRANCO OSPINA                                      201730550-3744
% JUAN CAMILO GIRALDO GARCIA                       201731702-3744
% %% 
% # Implemente los siguientes polinomios y halle el producto entre ellos.
%% 
% $$a(s)=s 2-20.6$$
% 
% $$b(s)=s 2 +19.6 s+151.2$$ 
% 
% 
a=[1 0 -20.6];
b=[1 19.6 151.2];
x=conv(a,b);
disp(x);
%% 
% 2.   Escriba las siguiente matrices.

A=[1.56 2.45 -3.11 4.10;
   3.22 1.00 2.50 3.25;
   -1.00 2.00 -0.66 0.05;
   0.23 0.90 1.00 0.33]
B=[1.2 10 15 0;
   3 5.5 2 2.8;
   4 6.8 7 0.78;
   0.89 -0.16 1.24 25]
%% 
% Determine la matriz transpuesta e inversa de cada una.

A_inv=inv(A)
B_inv=inv(B)
A_trans=transpose(A)
B_trans=transpose(B)
%% 
% Halle $(A*B)$ ,  $(A+B)$ , $A^2$.

M=A*B
S=A+B
Square=A^2
%% 
% 3.  . Para la siguiente función de transferencia, 

G=tf([1 3.5 1.5],[1 3 2 0]);
% (s+0.5)(s+3)
% -----------
% s(s+1)(s+2)
display(G)
%% 
% Halle su respuesta ante un escalón unitario en lazo cerrado con realimentación 
% unitaria, por medio de comandos.

R=step(G);
figure(1)
plot(R)
xlim([0 100])
hold on
fplot(heaviside(sym(1)))
%% 
% y mediante el ambiente Simulink.
% 
% % 
% 4.  Importe al Workspace de Matlab el archivo “datos3.txt” .

Muestras
Salida
%% 
% Grafique los datos de este archivo:

figure(2)
plot(Muestras,Salida);
hold on
plot(Muestras,Escalon);
%% 
% 4.1  Obtenga la gráfica correspondiente para un rango de 2800 a 4500 muestras.

x=Muestras(2800:4500);
y=Escalon(2800:4500);
z=Salida(2800:4500);
figure(3)
plot(x,y);
hold on
plot(x,z);
%% 
% 4.2    Represente la gráfica obtenida anteriormente para una escala de tiempo 
% en segundos, asuma un tiempo de muestreo “Ts” de 1ms.

xm=x./1000;
figure(4)
plot(xm,y);
hold on
plot(xm,z);
xlabel("t(ms)");
ylabel("Amplitude");