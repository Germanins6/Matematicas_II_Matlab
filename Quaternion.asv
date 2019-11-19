v = [1 -1 2]';
u = [-1 -1 1]';

%%Always norm u
uNormalized = u/norm(u)

angle = pi/4;
angle = angle * 180/pi
angle = angle/2


%%Unit quaternion

%%Quaternion V
vQ = [0 v']'

%%Unit form Q
q = [cosd(angle) sind(angle)*uNormalized']'

qConjugado = [ 0.9238; 0.2209; 0.2209; 0.2209]

w = q.*vQ.*qConjugado

%%Rq = (qQ(1)^2 - qQ' * qQ)* eye(3) + 2*qQ*qQ' + 2*qQ(1)*qQ