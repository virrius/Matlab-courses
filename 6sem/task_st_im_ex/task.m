%//������������ ������, ��������� �� ���

func = @(x,dx) -dx-10000*x;
x_start=0;
x_end=1e-1;
dx0=1;
h=1e-3;
n=(x_end-x_start)/h;
[A,B] = explicitEuler(func,n,h,x_start,dx0);
[C,D] = implicitEuler(func,n,h,x_start,dx0);
[E,F] = ode45(func,[x_start,x_end],dx0);
figure;
plot(A,B,'b');
grid on;
hold on;
plot(C,D,'r');
grid on;
hold on;
plot(E,F,'black');
hold off;
