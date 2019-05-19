
f = @(x,y) [y(2), - sin(y(1))]';
Time = [0, 100];
[A,T] = ode45(f, Time, [0, 0.5]);    
figure
plot(A, T(:,1), 'r'), grid on
figure
[A,T] = ode45(f, Time, [pi/4, 0]);
plot(A, T(:,1), 'b'), grid on
figure
[A,T] = ode45(f, Time, [pi/4, 0.5]);
plot(A, T(:,1), 'black'), grid on
figure
[A,T] = ode45(f, Time, [pi/4, 2]);
plot(A, T(:,1), 'g'), grid on

[A,T] = ode45(f, Time, [pi, 0]);
figure
plot(A, T(:,1), 'm'), grid on

