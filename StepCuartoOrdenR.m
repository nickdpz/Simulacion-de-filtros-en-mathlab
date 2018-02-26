fig=figure('Name','Autor Nicolas David Pastran','NumberTitle','off','Color','white','position',[250 200 850 400]);       
cla('reset')
clear;
clc;
datos = csvread("DatosSimulacionProteus/CuartoOrdenR.dat",1,0);
datose = csvread("DatosExperimentales/CuartoOrdenRp2.csv",2,0);
t=(datos(:,1))';
v=(datos(:,2))';
te=(datose(:,1)');
ve=(datose(:,2)');
plot(t,v,'Square','Color','red');
hold on;
plot(te,ve,'-','Color','black');
hold on;
load('SimulacionesSimulink/RealimentadoCuartoOrden.mat')
plot(datosmatlab(1,:),datosmatlab(2,:),'--blue');
grid on;
title('Filtro Cuarto Orden Lazo Cerrado K=1');
legend('Simulacion Proteus','Datos Reales','Simulacion MatLab')
legend('Location','southeast')
legend('boxoff')
ax = gca;
ax.XLim = [0 15e-3];
ax.YLim = [0 1.75]; 