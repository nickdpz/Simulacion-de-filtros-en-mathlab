for i=1:2
    j=i-1;
     str = strcat('Ingrese el Coeficiente A ',num2str(j,'%01d'),' : ');
    A{i}=input(str);
end
b{1}=[A(1) A(3);A(2) A(4)]

