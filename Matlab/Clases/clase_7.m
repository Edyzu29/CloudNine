clc, clear all, close all;

H= tf(24,[20 2])

figure(1);
step(24*H)
grid on;

%%
figure(2)
a=0.785/4;
F= tf(5,[0.2 1])
step(10*F)
grid on;
setting time