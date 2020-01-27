% problema
clc, close all, clear all;

G=tf(1,[1 8 5 0]);

kd=0; kp=1.93; ki=0; 
C=kp; %tf([kd kp kp],[1]);

kd=0.1; kp=100; ki=10; 
C1=tf([kd kp kp],[1]);

B=feedback(G*C,1);
B1=feedback(G*C1,1);

figure(1);
step(B); grid on; hold on;
pause(1);
%step(B1);