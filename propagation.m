format long;
syms x y % variables 
S = [x y]; %rewrite variable
f = x*cos(y^2); % function of new magnitude
V = [[2 5]; [1.3 4];[0.75 3.6]] ; % valores de las variables
er = [[0.1 0.1]; [0.1 0.1] ;[0.1 0.1]]; % errores de les variables
[n,m] = size(V);


for i=1:n
sum=0;
    for j=1:m
        aux = diff(f, S(j));
        sum = sum + (subs(aux, S, V(i,:))*er(i,j))^2;
    end
    ea(i,j)=vpa(sqrt(sum));
    er(i,j) = abs(100*ea/subs(f, S, V)); % error relativo 
end
