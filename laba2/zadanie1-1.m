x=[0:.01:5]; 
w1=1; 
w2=2; 
w3=3; 

y1=10+5.^(-x).*cos(w1.*x+0.5); 
y2=10+5.^(-x).*cos(w2.*x+0.5); 
y3=10+5.^(-x).*cos(w3.*x+0.5); 

plot(x,y1,x,y2,x,y3) 
title('function y=10+5^(-x)*cos(w*x+0.5)') 
legend('w=1', 'w=2', 'w=3') 
xlabel('x') 
ylabel('y(x)') 
grid on 
