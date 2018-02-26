fig=figure('Name','Autor Nicolas David Pastran','NumberTitle','off','Color','white','position',[250 200 850 400]);       
cla('reset')
clear;
clc;
datos = csvread("DatosSimulacionProteus/QuintoOrdenR.dat",1,0);
datose = csvread("DatosExperimentales/QuintoOrdenRp.csv",2,0);
t=(datos(:,1))';
v=(datos(:,2))';
te=(datose(:,1)');
ve=(datose(:,2)');
plot(t,v,'Square','Color','red');
hold on;
plot(te,ve,'-','Color','black');
hold on;
load('SimulacionesSimulink/RealimentadoQuintoOrden.mat')
plot(datosmatlab(1,:),datosmatlab(2,:),'--blue');
grid on;
title('Filtro Quinto Orden Lazo Cerrado K=1');
legend('Simulacion Proteus','Datos Reales','Simulacion MatLab')
legend('Location','southeast')
legend('boxoff')
ax = gca;
ax.XLim = [0 3e-2];
%ax.XLim = [0 20e-3];