A =[1 2 3 ; 4 5 6]
B = ones(2,3)*4-eye(2,3)*5
 C=A>=B
 C=A>3
 %C=A>[1 2;3 4]
 A(A>4)=100
isfinite([1 199 inf; NaN 0 -3])
Z=zeros(2,3,'logical')
I=find(A>10)
[I,J]=find(A>10)
n=length(A)
I=any(A)
I=all(A)