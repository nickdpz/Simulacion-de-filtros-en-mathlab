clear;
clc;

Max=input('Orden del Polo: ')+1;

for i=1:Max
    j=i-1;
     str = strcat('Ingrese el Coeficiente A ',num2str(j,'%01d'),' : ');
    A{i}=input(str);
end
Lim=Max/2;
if rem(Max,2)==1
    A{Max+1}=0;
    Lim=(Max+1)/2;
end
A;
RH{1}=A(1);
RH{2}=A(2);
