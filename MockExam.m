%% Excercise 2



%% Excercise 3 A
R = 1/3*[2 -1 2; 2 2 -1; -1 2 2]

angle = asind(-R(3,1))

%% Excercise 3 B
R = 1/3*[2 -1 2; 2 2 -1; -1 2 2]

angle = acosd((trace(R)-1)/2)

%% Excercise 4

qt0 = [0.9848, 0.1418, 0.0709, -0.0709]
qt1 = [0.5940 0.3641 0.5982 -0.3958]

q1 = qt1(1)
qv1 = qt1(2:4)

q0 = qt0(1)
qv0 = -qt0(2:4)

%dq = q1*q0conj

dqi = q0*q1-dot(qv0', qv1)
dqv = q1*qv0+q0*qv1+cross(qv1, qv0)

t = 0.5;
omega = acosd(dot(qt0,qt1))
attitude = qt0 * sind(1-t)*omega/sind(omega) + qt1 *(sind(t*omega)/sind(omega))








