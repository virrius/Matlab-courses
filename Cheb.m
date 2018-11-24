function  z  = Cheb(a,b,n )
%z=zeros(n)
z = [1:n];
for i=1:n
    z(i)=0.5*(a+b)+0.5*(b-a)*cos((2*i-1)/(2*n)*pi);
end

