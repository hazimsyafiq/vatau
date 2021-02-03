x=[0 1 2]; y=[4 7 -1]; % сетка функции x и y 

% формировать систем уравнении для отрезка внутри сетки 
a=[1 -1 0 0; 0 0 1 -1; 0 -1 -2 1; 0 0 0 1]; 
b=[-3;8;0;0]; 
c=[7 -1]; 

aa=a\b; % решение системы 
z0=0:.1:1; 
z1=1:.1:2; 

% уравнения функции для каждого отрезка 
y0=@(z)aa(1)*(z-x(2)).^2+aa(2)*(z-x(2))+c(1); 
y1=@(z)aa(3)*(z-x(3)).^2+aa(4)*(z-x(3))+c(2); 
 
% изобразить сеточную функцию и графики кусочно-параболической интерполяции 
figure(1), plot(x,y,'or'), grid, hold on 
plot(z0, y0(z0), z1, y1(z1), '--'), hold off 
