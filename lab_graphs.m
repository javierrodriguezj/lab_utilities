function f=representacion(X,Y,A,B,errX,errY)
hold on
scatter(X,Y,'g',"filled");
epsilon=abs(min(X(1,1)-X(1,2)));
epsilon2=abs(min(Y(1,1)-Y(1,2)));
ylimit=[min(Y)-epsilon2,max(Y)+epsilon2];
xlimit=[min(X)-epsilon,max(X)+epsilon];
f=@(x)A*x+B;
fplot(f,'k','LineWidth',0.75);
xlim(xlimit);
ylim(ylimit);
box on
grid on
errorbar(X,Y,errY,errY,errX,errX,"k","Linestyle","none");
end
