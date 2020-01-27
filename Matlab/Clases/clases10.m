clc, clear all, %close all;

k=1;
wn=1;
fa=0.7;

H=tf((k*wn^2),[1 2*fa*wn wn^2])

figure(1);
title('Pepe');
step(H);
grid on;

t=0:0.001:1;
a=1, f=10, 
u=a*sin(2*pi*f*t);
figure(2);
lsim(H,u,t);
grid on;

%%
t=0;
u=0;
if(t==2)
    u=10;
else if(t==3)
        u=-10;
    else if(t==6)
            u=10;
        else if(t==7)
                u=0;
            else t=t+1;
            end;
        end;
    end;
end;
plot(u);