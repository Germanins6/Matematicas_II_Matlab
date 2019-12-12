alpha = 0:0.01:1;
beta = 0:0.01:1;

[A,B] = meshgrid(alpha, beta);

N1 = (1-A).*(1-B);
N2 = (1-B).*A;
N3 = A.*B;
N4 = (1-A).*B;

mesh(A,B,N1);
mesh(A,B,N2);
mesh(A,B,N3);
mesh(A,B,N4);

c1 = [0 0 0];
c2 = [1 0 0];
c3 = [0 1 0];
c4 = [0 0 1];


a = 0.5+sqrt(2)/4
v = [a (sqrt(2)/4) 0] 
    norm(v)
    
    q = [1 0 0 0]';
    