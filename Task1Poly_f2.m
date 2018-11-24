n=15;
a = -1;
b = 1;
x = linspace(a,b,n);
%x = Cheb(a,b,n);
disp(x);
xx = linspace(a,b,1000);
y = f2(x);
yy=lagrange(x,y,xx);




    %testDeltaYY=lagrange(x,y,xx);
    delta=max(abs(testDeltaYY-f2(xx)));
   
    
    
plot(xx, f2(xx));
grid on;
hold on;
plot(x, y,'LineStyle','none','Marker','.','Color','r','MarkerSize',20)
plot(xx, yy);
hold off
axis([a,b, -1,1]);

CoeffMat = zeros(n,n);
for i=1:n
    for j=1:n
        CoeffMat(i,j) = x(i)^(j-1);
    end
end

%disp(CoeffMat);
roots=(CoeffMat\y');
disp(roots);    



