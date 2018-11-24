n=30;
a = -5*pi;
b = 5*pi;
x = linspace(a,b,n);
%x = Cheb(a,b,n);
%disp(x_Cheb);
xx = linspace(a,b,1000);
y = f1(x);
yy=lagrange(x,y,xx);


delta=1;
testDeltaNodes=1;
while delta>0.001
    testDeltaNodes=testDeltaNodes+1;
    testDeltaX=linspace(a,b,testDeltaNodes);
    testDeltaY= f1(testDeltaX);
    testDeltaYY=lagrange(testDeltaX,testDeltaY,xx);
    
    delta=max(abs(testDeltaYY-f1(xx)));
   
    
end
disp("best deltaNodes:");
disp(testDeltaNodes)
    
plot(xx, f1(xx));
grid on;
hold on;
plot(x, y,'LineStyle','none','Marker','.','Color','r','MarkerSize',20)
plot(xx, yy);
hold off
axis([a,b, -2,2]);

CoeffMat = zeros(n,n);
for i=1:n
    for j=1:n
        CoeffMat(i,j) = x(i)^(j-1);
    end
end

%disp(CoeffMat);
roots=(CoeffMat\y');
disp(roots);    



