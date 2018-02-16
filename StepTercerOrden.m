fig=figure('Name','Autor Nicolas David Pastran','NumberTitle','off','Color','white','position',[250 200 850 400]);       
cla('reset')
datos = csvread("TercerOrden.dat",1,0);
t=(datos(:,1))';
v=(datos(:,2))';
datose = csvread("TercerOrdenp.csv",2,0);
te=(datose(:,1)');
ve=(datose(:,2)'/2);
plot(t,v,'Square','Color','red');
hold on;
plot(te,ve,'-','Color','black');
hold on;
dem=[1 3000 3e6 2e9];
num=2e9;
h=tf(num,dem);
step(h,'--blue');
grid on;
legend('Simulacion Proteus','Datos Reales','Simulacion MatLab')
legend('Location','northeastoutside')
legend('boxoff')
grid on;