fig=figure('Name','Autor Nicolas David Pastran','NumberTitle','off','Color','white','position',[250 200 850 400]);       
cla('reset')
datos = csvread("DatosSimulacionProteus/CuartoOrden.dat",1,0);
t=(datos(:,1))';
v=(datos(:,2))';
datose = csvread("DatosExperimentales/CuartoOrdenp.csv",2,0);
te=(datose(:,1)');
ve=(datose(:,2)'/2);
plot(t,v,'Square','Color','red');
hold on;
plot(te,ve,'-','Color','black');
hold on;
dem=[1 5200 14.2e6 13.2e9 9e12];
num=9e12;
h=tf(num,dem);
step(h,'--blue');
grid on;
legend('Simulacion Proteus','Datos Reales','Simulacion MatLab')
legend('Location','northeastoutside')
legend('boxoff')
grid on;
