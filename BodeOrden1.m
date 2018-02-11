fig=figure('Name','Autor Nicolas David Pastran','NumberTitle','off','Color','white','position',[250 200 850 400]);       
cla('reset')
T=1/2000;
dem=[T 1];
num=1;
h=tf(num,dem);
bode(h);
grid on;
