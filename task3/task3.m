a=1;
b=2;
x1=2;
x2=2.5;
pivot_points=2;
alpha = 1e-3;
eps = 1e-10;
max_iter=10000;

pivot_t=a+(b-a)*rand(1,pivot_points);
pivot_x=x1+(x2-x1)*rand(1,pivot_points);
t=linspace(a,b,1000);




I_upd = integral([a, pivot_t, b], [x1, pivot_x, x2], t);
I = 0;


iter=0;

while (abs(I_upd - I) > eps)
    gr = upd_gr([a, pivot_t, b], [x1, pivot_x, x2], t, eps);
    pivot_x = pivot_x - alpha * gr(2:pivot_points+1);
   
    I = I_upd;
    iter=iter+1;
    I_upd = integral([a, pivot_t, b], [x1, pivot_x, x2], t);
    if iter>=max_iter
        break
    end
  

  
end

F = lagrange([a, pivot_t, b], [x1, pivot_x, x2],t);
disp(I)
disp(F)
 
plot(t, t+1./t, 'r');
grid on;
hold on;
plot(t, F, 'g');
hold off