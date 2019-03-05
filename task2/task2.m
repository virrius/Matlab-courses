

x=xx;
y=yy;
t = (0:0.001:50);

exprs = [exp(-5.*tt) .* cos(5.*tt), exp(-5.*tt) .* sin(5.*tt), ones(length(tt))'];

c=exprs\x;
c(4)=y(1)+c(1)*exprs(1,2)-c(2)*exprs(1,1);

func1=x1(t,c(1),c(2),c(3));
func2=x2(t,c(1),c(2),c(4));


grid on;
hold on;
plot(x,y,'r'); 
plot(x,y,'*'); 
plot(func1,func2,'g');



