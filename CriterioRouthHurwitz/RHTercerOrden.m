for i=1:4
    j=i-1;
     str = strcat('Ingrese el Coeficiente A ',num2str(j,'%01d'),' : ');
    A{i}=input(str);
end
B{1}=-(det([A{1} A{3};A{2} A{4}]))/A{2};
C=-(det([A{2} A{4};B{1} 0]))/B{1};
S=[A{1} A{2} B{1} C]