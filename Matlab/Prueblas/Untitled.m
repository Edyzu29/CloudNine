% A=[0,1,2,3,4,0,1,2,3,4,0,1,2,3,4];
% b=0:1:14;
% t= 0:0.01:10
% y = 1*sin(2*pi*t);
% plot(t,y)
j=1;
a1=0; b1=0; c1=0;
for (j=0;j<5;
    multi=input('multplicador ');
    explo=input('riquichi ');
    a0=multi;
    b0=multi*2*explo;
    c0=explo*explo*multi;
    a1=a1+a0;
    b1=b1+b0;
    c1=c1+c0;
    j=input('meter :v ');
    if(j==2)
        x1=(-b1+sqrt((b1^2)-4*a1*c1))/(2*a1);
        x2=(-b1-sqrt((b1^2)-4*a1*c1))/(2*a1);
    end
end