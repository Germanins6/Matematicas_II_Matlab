angle = 20
q1 = [cosd(20) (-1*sind(20)/sqrt(5)) 2*sind(20)/sqrt(5) 0]'

%%Comprobar norma 1
q1'*q1





%%Cogemos parte escalar
anguloQ3 = acosd(.69)
%^Coon este angulo podemos calcular seno
anguloQ3*2

%%Esto lo podemos dividir entre la parte vectorial 
v = sind(ans/2)

%%Parte vectorial
q3 = [-0.67 0.20 0.15]'

%%Eje de giro
u = q3/v

%%Tenemos otra solucion para lo mismo, cambiamos el angulo de signo y
%%volvemos a calcular desde el seno
v2 = sind(-anguloQ3/2)

u2 = q3/v2