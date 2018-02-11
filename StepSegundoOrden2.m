fig=figure('Name','Autor Nicolas David Pastran','NumberTitle','off','Color','white','position',[250 200 850 400]);       
cla('reset')
zi=0.7;
wn1=3000;
datos = csvread("SegundoOrden2.dat",1,0);
t=(datos(:,1))';
v=(datos(:,2))';
plot(t,v,'--b');hold on;
dem=[1 2*zi*wn1 wn1^2];
num=wn1^2;
h=tf(num,dem);
step(h,'r');
grid on;
legend('Simulacion Proteus','Simulacion MatLab')
legend('Location','northeastoutside')
legend('boxoff')
grid on;