fig=figure('Name','Autor Nicolas David Pastran','NumberTitle','off','Color','white','position',[250 200 850 400]);       
cla('reset')
datos = csvread("QuintoOrden.dat",1,0);
t=(datos(:,1))';
v=(datos(:,2))';
plot(t,v,'--b');hold on;
dem=[1 7200 24.6e6 41.6e9 35.4e12 18e15];
num=18e15;
h=tf(num,dem);
step(h,'r');
grid on;
legend('Simulacion Proteus','Simulacion MatLab')
legend('Location','northeastoutside')
legend('boxoff')
grid on;