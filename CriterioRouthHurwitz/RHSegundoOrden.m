for i=1:3
    j=i-1;
     str = strcat('Ingrese el Coeficiente A ',num2str(j,'%01d'),' : ');
    A{i}=input(str);
end

b=-(det([A{1} A{3};A{2} 0]))/A{2};
S=[A{1} A{2} b]

