fig=figure('Name','Autor Nicolas David Pastran','NumberTitle','off','Color','white','position',[250 200 850 400]);       
cla('reset')
T=1/2000;
datos = csvread("DatosSimulacionProteus/PrimerOrden1.dat",1,0);
datose = csvread("DatosExperimentales/PrimerOrdenp.csv",2,0);
te=(datose(:,1)');
ve=(datose(:,2)');
t=(datos(:,1))';
v=(datos(:,2))';
plot(t,v,'Square','Color','red');
hold on;
plot(te,ve,'-','Color','black');
hold on;
load('SimulacionesSimulink/PrimerOrden.mat')
plot(datosmatlab(1,:),datosmatlab(2,:),'--blue');
grid on;
title('Filtro Primer Orden');
legend('Simulacion Proteus','Datos Reales','Simulacion MatLab')
legend('Location','northeastoutside')
legend('boxoff')
ax = gca;
ax.XLim = [0, 5e-3]; 
ax.YLim = [0 2.25]; 
grid on;
