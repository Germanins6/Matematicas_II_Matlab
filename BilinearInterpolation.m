p1 = [0 0 0]'
p2 = [4 0 0]'
p3 = [5 3 0]'
p4 = [0 3 0]'
p = [1.5 0.3 0]'

fp1 = 2;
fp2 = 4;
fp3 = 2;
fp4 = 4;

A = cross(p4-p1,p3-p2)
B = cross(p4-p1,p-p2)+cross(p-p1,p3-p2)
C = cross(p-p1,p-p2)

Beta = roots([A(3), -B(3) , C(3)])
Beta = Beta(2)

Pa = p1+(p4-p1)*Beta
Pb = p2 + (p3-p2)*Beta

Alfa = ((Pb-Pa)'*(p-Pa))/((Pb-Pa)'*(Pb-Pa))

N1 = (1-Alfa)*(1-Beta)
N2 = (1-Beta)*Alfa
N3 = Beta*Alfa
N4 = (1-Alfa)*Beta

N1*fp1 + N2*fp2 + N3*fp3 + N4*fp4