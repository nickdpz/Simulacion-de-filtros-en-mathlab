fig=figure('Name','Autor Nicolas David Pastran','NumberTitle','off','Color','white','position',[250 200 850 400]);       
cla('reset')
datos = csvread("TercerOrden.dat",1,0);
t=(datos(:,1))';
v=(datos(:,2))';
plot(t,v);hold on;
dem=[1 3000 3e6 2e9];
num=2e9;
h=tf(num,dem);
step(h);
grid on;