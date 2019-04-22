
n_end = 10;
%func1 - стопится на 1
%func2 -  после 1.5 dx растет с огромной скоростью 1.5 1.52 1.58
%func3 - не может отойти от 0 при заданном y0
h=1e-6;
n = n_end/h;
[dx,x] = explicitEuler(@func3,n,h,0,1);
plot(dx, x, 'Color','red'), grid on