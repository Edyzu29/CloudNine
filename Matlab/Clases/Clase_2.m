clc % limpiar el command windows
clear all %limpia los valores de las variables
close all %Cierra todas las ventanas abiertas

t=0:0.1:10;
y1=(t-5).^2;
y2=t;
y3=(15/8)*t;

figure(1);

plot(t,y1,'kd',t,y2,'r',t,y3,'bp');
grid on;
legend('puto','el q','lo lea');

% figure(2);
% 
% plot(t,y1,'r');
% grid on;

%%
figure(1);

subplot(3,1,1);
plot(t,y1,'kd');
grid on;
legend('puto');

subplot(3,1,2);
plot(t,y2,'r');
grid on;
legend('el que');

subplot(3,1,3);
plot(t,y3,'b*');
grid on;
legend('lo lea');

%%
figure(1);

d1=100*(1-exp(-t));
d2=100*(1-exp(-2*t));
d3=100*(1-exp(-3*t));

subplot(2,2,1);
plot(t,d1,'kd');
grid on;
legend('1');

subplot(2,2,2);
plot(t,d2,'r');
grid on;
legend('2');

subplot(2,2,3);
plot(t,d3,'b*');
grid on;
legend('3');

subplot(2,2,4);
plot(t,d1,'kd',t,d2,'r',t,d3,'bp');
grid on;
legend('1','2','3');


% la Zona donde el valor es constante es llamada Zona de permanencia o
% estable
% Mientras que la zona de cambio se llama la zona de transitorios :v










