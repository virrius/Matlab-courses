func = @(x,y) [y(2) , 16.81 * y(1)]';
start = -2;
final = 10;
h=1e-2;
n=(final-start)/h;
%[X,DX] = explicitEuler(func,final,h,0,[1.0,-4.1]');
[X,DX] = ode45(func,[start,final],[1,-4.1]');

size(X)

figure
plot(X, DX(:,1), 'b'), grid on


func2 = @(x,y) [y(2), -8.2*y(2) - 16.81*y(1)]';
%[X,DX]=rk(func2,start,final,h,[1,-4.1]');
[X,DX]=ode45(func2,[start,final],[1,-4.1]);
figure
plot(X, DX(:,1), 'b'), grid on



