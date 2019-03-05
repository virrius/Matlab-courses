a=1;
b=2;
x1=2;
x2=2.5;
pivot_points=10;

pivot_t=a+(b-a)*rand(1,pivot_points);
pivot_x=x1+(x2-x1)*rand(1,pivot_points);
t=linspace(a,b,100);




while (abs(new_I - I) > eps)
    gr = grad([a, pivot_t, b], [xa, pivot_x, xb], t);
    pivot_x = pivot_x - step * gr(2:pivot_points+1);
   
    I = new_I;
    new_I = integral([a, pivot_t, b], [xa, pivot_x, xb], t);

  

  
end
while (max(abs(new_rand_x - rand_x)) > eps) || (abs(new_I_tr - I_tr) > eps)
 eps = 1e-6;
    gr = nodes_x;
    for k=1:length(nodes_x)
        new_nodes_x = nodes_x;
        new_nodes_x(k)= new_nodes_x(k) + eps;  % change one element from nodes
        % gr(k) = lim ((f(x(k)+eps) - f(x(k))) / eps)
        gr(k) = (integral(nodes_t, new_nodes_x, t) - integral(nodes_t, nodes_x, t)) / eps;  % calculate delta
    end