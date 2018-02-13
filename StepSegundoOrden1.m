fig=figure('Name','Autor Nicolas David Pastran','NumberTitle','off','Color','white','position',[250 200 850 400]);       
cla('reset')
zi=0.5;
wn1=1000;
datos = csvread("SegundoOrden1.dat",1,0);
datose = csvread("SegundoOrden1p.csv",2,0);
te=(datose(:,1)');
ve=(datose(:,2)'/2);
t=(datos(:,1))';
v=(datos(:,2))';
plot(t,v,'Square','Color','red');
hold on;
plot(te,ve,'-','Color','black');
hold on;
dem=[1 2*zi*wn1 wn1^2];
num=wn1^2;
h=tf(num,dem);
step(h,'--blue');
grid on;
legend('Simulacion Proteus','Datos Reales','Simulacion MatLab')
legend('Location','northeastoutside')
legend('boxoff')
grid on;