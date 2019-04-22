function [X,dX] = implicitEuler(func,n,h,x,dx)

X = zeros(size(n)); 
dX = zeros(size(n));
dXt = zeros(size(n));
X(1) = x;
dX(1) = dx;

for i=1:n-1
    X(i+1)=X(i)+ h;% считаем ф-цию
    dXt(i+1)=dX(i)+(X(i+1)-X(i))*func(X(i),dX(i));    
    dX(i+1)= dX(i) + (X(i+1)-X(i))*(func(X(i),dX(i))+func(X(i+1),dXt(i+1)))/2; % считаем производную
end