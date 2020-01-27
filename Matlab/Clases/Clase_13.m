%P
clc, close all, clear all;

%Planta
    G=tf(1,[4 1]);

%Controlador
    C1=1; %Controlador proporcional
    C2=10;
    C3=100;
    
%Sitema realimentado
    B1=feedback(C1*G,1)
    B2=feedback(C2*G,1)
    B3=feedback(C3*G,1)
    
%Simulacion escalon unitario

figure(1)

step(B1), grid on, hold on
step(B2)
step(B3)
title('PEPEP')

%%
%PI
clc, close all, clear all;

%Planta
    G=tf(1,[4 1]);

%Controlador
    kp=1;kd=1;
    C1=tf([kd kp],[1]);
    
    kp=1;kd=10;
    C2=tf([kd kp],[1]);
    
    kp=1;kd=100;
    C3=tf([kd kp],[1]);
    
%Sitema realimentado
    B1=feedback(C1*G,1)
    B2=feedback(C2*G,1)
    B3=feedback(C3*G,1)
    
%Simulacion escalon unitario

figure(1)

step(B1), grid on, hold on
pause(1);
step(B2)
pause(1);
step(B3)
title('PEPEP')
%%
%PD
clc, close all, clear all;

%Planta
    G=tf(1,[4 1]);

%Controlador
    kp=1;kd=0.1;
    C1=tf([kd kp],[1]);
    
    kp=1;kd=2;
    C2=tf([kd kp],[1]);
    
    kp=1;kd=10;
    C3=tf([kd kp],[1]);
    
%Sitema realimentado
    B1=feedback(C1*G,1)
    B2=feedback(C2*G,1)
    B3=feedback(C3*G,1)
    
%Simulacion escalon unitario

figure(1)

step(B1), grid on, hold on
pause(1);
step(B2)
pause(1);
step(B3)
%%
%PD
clc, close all, clear all;

%Planta
    G=tf(1,[4 1]);

%Controlador
    kp=1;kd=0.1;ki=
    C1=tf([kd kp ki],[1 0]);
    
    kp=1;kd=2;
    C2=tf([kd kp],[1]);
    
    kp=1;kd=10;
    C3=tf([kd kp],[1]);
    
%Sitema realimentado
    B1=feedback(C1*G,1)
    B2=feedback(C2*G,1)
    B3=feedback(C3*G,1)
    
%Simulacion escalon unitario

figure(1)

step(B1), grid on, hold on
pause(1);
step(B2)
pause(1);
step(B3)