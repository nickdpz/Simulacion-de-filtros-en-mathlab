fig=figure('Name','Autor Nicolas David Pastran','NumberTitle','off','Color','white','position',[250 200 850 400]);       
cla('reset')
datos = csvread("DatosSimulacionProteus/TercerOrden.dat",1,0);
t=(datos(:,1))';
v=(datos(:,2))';
datose = csvread("DatosExperimentales/TercerOrdenp.csv",2,0);
te=(datose(:,1)');
ve=(datose(:,2)');
plot(t,v,'Square','Color','red');
hold on;
plot(te,ve,'-','Color','black');
hold on;
load('SimulacionesSimulink/TercerOrden.mat')
plot(datosmatlab(1,:),datosmatlab(2,:),'--blue');
grid on;
title('Filtro Tercer Orden');
legend('Simulacion Proteus','Datos Reales','Simulacion MatLab')
legend('Location','southeast')
legend('boxoff')
ax = gca;
ax.XLim = [0, 15e-3]; 
ax.YLim = [0 2.5]; 
grid on;