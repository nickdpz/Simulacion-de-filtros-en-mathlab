fig=figure('Name','Autor Nicolas David Pastran','NumberTitle','off','Color','white','position',[250 200 850 400]);       
cla('reset')
T=1/2000;
datos = csvread("PrimerOrden1.dat",1,0);
t=(datos(:,1))';
v=(datos(:,2))';
plot(t,v);hold on;
dem=[T 1];
num=1;
h=tf(num,dem);
step(h);
grid on;
