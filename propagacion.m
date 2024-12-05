format long;
syms  % variables 
S = []; %escribe las variables de arriba
f = ; % la funcion del error
V = [] ; % valores de las variables
er = []; % errores de les variables
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
