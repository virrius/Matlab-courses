function [ X, dX ] = rk( func,start,final,h,nach_znach )
%RK Summary of this function goes here
%   Detailed explanation goes here  
 X = [start:h:final];
 dX = nach_znach;
 for i = 1:size(X,2)-1
        k1 = func(X(i),dX(:,i));
        k2 = func(X(i) +h/2,dX(:,i) + h/2 * k1);
        k3 = func(X(i) +  h/2,dX(:,i) + h/2 * k2);
        k4 = func(X(i)+h,dX(:,i) + h * k3);    
        dX(:,i+1) =dX(:,i) + h/6*(k1+2*k2+2*k3+k4);
 end
end

