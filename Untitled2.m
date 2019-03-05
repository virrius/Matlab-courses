A=fix(10*rand([4,3]))
B=fix(10*rand([3,4]))
C=A*B
D=C(1:3,1:3)
DET=det(D)
POL=poly(D)
EIG=eig(D)