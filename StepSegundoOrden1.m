fig=figure('Name','Autor Nicolas David Pastran','NumberTitle','off','Color','white','position',[250 200 850 400]);       
cla('reset')
zi=0.5;
wn1=1000;
datos = csvread("DatosSimulacionProteus/SegundoOrden1.dat",1,0);
datose = csvread("DatosExperimentales/SegundoOrden1p.csv",2,0);
te=(datose(:,1)');
ve=(datose(:,2)');
t=(datos(:,1))';
v=(datos(:,2))';
plot(t,v,'Square','Color','red');
hold on;
plot(te,ve,'-','Color','black');
hold on;
load('SimulacionesSimulink/SegundoOrden1.mat')
plot(datosmatlab(1,:),datosmatlab(2,:),'--blue');
grid on;
title('Filtro Segundo Orden #1');
grid on;
legend('Simulacion Proteus','Datos Reales','Simulacion MatLab')
legend('Location','southeast')
legend('boxoff')
ax = gca;
ax.XLim = [0, 12e-3]; 
ax.YLim = [0 2.5]; 
wd=wn1*sqrt(1-zi^2);
Mp=exp((-pi*zi)/sqrt(1-zi^2))
ov=2+2*Mp
tp=pi/wd
grid on;