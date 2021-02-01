W = zpk([], [0 -1], 50); %передаточная функция разомкнутой системы 
Wz = feedback(W, 1); %передаточная функция замкнутой системы 
[y, t] = step(Wz); %построить переходный процесс 
[ym, i] = max(y); %значения максимума 

dp = 1.02; 
dm = 0.98; 
j=length(y); 

while (true) 
    j=j-1; %начинаем от правой конца 
    if y(j)>= dp || y(j) <= dm 
        tc = t(j+1); %время установления 
        y(j) = y(j+1); %значения установления 
        break; 
    end 
end 

step(Wz) 
grid on 
text(t(i), ym+.15, sprintf('Mp=%f',ym)) 
text(t(i), ym+.05, sprintf('Tp=%f',t(i))) 
text(tc, y(j)+.1, sprintf('Tc=%f',tc)) 
