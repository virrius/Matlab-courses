function [X,dX] = explicitEuler(func,n,h,x,dx)
X = zeros(size(n)); 
dX = zeros(size(n));
X(1) = x;
dX(1) = dx;
for i=1:n-1
    dX(i+1)= dX(i) + h*func(dX(i)); % считаем производную
    X(i+1)=X(i)+ h;% считаем ф-цию
end
    
