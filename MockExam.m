%% Excercise 1





%% Excercise 2

R40 = [0.8830 -0.4545 0.1170; 0.4545 0.7660 -0.4545; 0.1170 0.4545 0.8830];
R35 = [0.9096 -0.4056 0.0904; 0.4056 0.8192 -0.4056; 0.0904 0.4056 0.9096];

R5 = R40*R35';
R10 = R5*R5;
R50 = R10*R40

%% Excercise 3 A
R = 1/3*[2 -1 2; 2 2 -1; -1 2 2]

%1st Set of Angles
pitch = asind(-R(3,1))
roll = atan2d(R(3,2)/cosd(pitch),R(3,3)/cosd(pitch))
yaw = atan2d(R(2,1)/cosd(pitch), R(1,1)/cosd(pitch))

%2nd Set of Angles
pitch = 180-asind(-R(3,1))
roll = atan2d(R(3,2)/cosd(pitch),R(3,3)/cosd(pitch))
yaw = atan2d(R(2,1)/cosd(pitch), R(1,1)/cosd(pitch))


%% Excercise 3 B
R = 1/3*[2 -1 2; 2 2 -1; -1 2 2]

%Now working in radians not degrees!
angle = acos((trace(R)-1)/2)
Ux = (R-R')/2*sin(angle)
u = [Ux(3,2) Ux(1,3) Ux(2,1)]

%Now we must normalize axis
u = u/norm(u)
norm(u) %If norm equals 1 its done

%With angle and axis norm we obtain rotation vector
r = angle*u

CheckAxis = r/norm(r)
CheckAngle = norm(r)

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


%% Exercise 5

wp = [19.5; 205; 0]
angle = -80;

Ux = [0 0 0; 0 0 -1; 0 1 0]
mRw = eye(3)+ sind(angle)*Ux+(1-cosd(angle))*Ux^2

mdmw = mRw * -wp

%mRwAff = [wRm 

