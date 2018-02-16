for i=1:5
    j=i-1;
     str = strcat('Ingrese el Coeficiente A ',num2str(j,'%01d'),' : ');
    A{i}=input(str);
end
B{1}=-(det([A{1} A{3};A{2} A{4}]))/A{2};
B{2}=-(det([A{1} A{5};A{2} A{6}]))/A{2}
c{1}=-(det([A{2} A{4};B{1} B{2}]))/B{1};
S=[A{1} A{2} B{1} c{1}]