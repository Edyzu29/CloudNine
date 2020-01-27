clc;
delete(instrfind);
con=serial('COM4','BaudRate',9600);
fopen(con);
y=0;
while(y<1)
    valor = str2double(fread(con));
    drawnow;
    plot(valor,'r-')
    grid on;
    hold off;
    pause(0.1);
    y = y + 1;
    ylim([0 500])
end