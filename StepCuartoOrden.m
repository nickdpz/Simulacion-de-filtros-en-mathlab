fig=figure('Name','Autor Nicolas David Pastran','NumberTitle','off','Color','white','position',[250 200 850 400]);       
cla('reset')
datos = csvread("CuartoOrden.dat",1,0);
t=(datos(:,1))';
v=(datos(:,2))';
plot(t,v,'--b');hold on;
dem=[1 5200 14.2e6 13.2e9 9e12];
num=9e12;
h=tf(num,dem);
step(h,'r');
grid on;
legend('Simulacion Proteus','Simulacion MatLab')
legend('Location','northeastoutside')
legend('boxoff')
grid on;
