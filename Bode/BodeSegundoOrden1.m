fig=figure('Name','Autor Nicolas David Pastran','NumberTitle','off','Color','white','position',[250 200 850 400]);       
cla('reset')
zi=0.5;
wn1=1000;
dem=[1 2*zi*wn1 wn1^2];
num=wn1^2;
h=tf(num,dem);
step(h);
grid on;