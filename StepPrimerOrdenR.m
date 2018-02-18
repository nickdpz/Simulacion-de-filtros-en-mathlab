fig=figure('Name','Autor Nicolas David Pastran','NumberTitle','off','Color','white','position',[250 200 850 400]);       
cla('reset')
clc;
clear;
datos = csvread("DatosSimulacionProteus/PrimerOrdenR.dat",1,0);
datose = csvread("DatosExperimentales/PrimerOrdenRp.csv",2,0);
t=(datos(:,1))';
v=(datos(:,2))';
te=(datose(:,1)');
ve=(datose(:,2)');
plot(t,v,'Square','Color','red');
hold on;
plot(te,ve,'-','Color','black');
hold on;
load('SimulacionesSimulink/RealimentadoPrimerOrden.mat')
plot(datosmatlab(1,:),datosmatlab(2,:),'--blue');
grid on;
legend('Simulacion Proteus','Datos Reales','Simulacion MatLab')
legend('Location','northeastoutside')
legend('boxoff')
ax = gca;
ax.YLim = [0 1.1]; 