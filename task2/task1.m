x=V;
y=b1f;

xi = min(x):0.1:max(x);
grid on;
hold on;
plot(x, y, 'b');
plot(x, y, '*r');
N=1;
%coeff1 = polyfit(x, y, N)
fun = @(x,xdata)x(1)*xdata.^N;
coeff1 = lsqcurvefit(fun,min(x),x,y)
coeff1(N+1)=0
y2=0;
for k=0:N
    y2 = y2 + coeff1(N-k+1) * xi.^k;
end
hold on; 
plot(xi, y2, 'r'); 


y=b2f;
hold on
plot(x, y, 'b');
plot(x, y, '*r');
N1=2;
%coeff2 = polyfit(x, y, N1);
fun = @(x,xdata)x(1)*xdata.^N1;
coeff2 = lsqcurvefit(fun,min(x),x,y)
coeff2(N1+1)=0
y3 = 0;
for k=0:N1
    y3 = y3 + coeff2(N1-k+1) * xi.^k;
end
hold on; 
plot(xi, y3, 'g');
