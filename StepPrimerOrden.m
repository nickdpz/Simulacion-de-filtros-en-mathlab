fig=figure('Name','Autor Nicolas David Pastran','NumberTitle','off','Color','white','position',[250 200 850 400]);       
cla('reset')
T=1/2000;
datos = csvread("DatosSimulacionProteus/PrimerOrden1.dat",1,0);
datose = csvread("DatosExperimentales/PrimerOrdenp.csv",2,0);
te=(datose(:,1)');
ve=(datose(:,2)'/2);
t=(datos(:,1))';
v=(datos(:,2))';
plot(t,v,'Square','Color','red');
hold on;
plot(te,ve,'-','Color','black');
hold on;
dem=[T 1];
num=1;
h=tf(num,dem);
step(h,'--blue');
grid on;
legend('Simulacion Proteus','Datos Reales','Simulacion MatLab')
legend('Location','northeastoutside')
legend('boxoff')
ax = gca;

grid on;
