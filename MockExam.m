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


wp = [19.5 205 0]';

yaw = 90;
pitch = -90;
roll = 0;

vRm = [(cosd(pitch)*cosd(yaw)) (cosd(yaw)*sind(pitch)*sind(roll) - cosd(roll)*sind(yaw)) (cosd(yaw)*cosd(roll)*sind(pitch) + sind(yaw)*sind(roll));
    (cosd(pitch)*sind(yaw)) (sind(yaw)*sind(pitch)*sind(roll) + cosd(roll)*cosd(yaw)) (cosd(roll)*sind(yaw)*sind(pitch) - cosd(yaw)*sind(roll));
    (-sind(pitch)) (cosd(pitch)*sind(roll)) (cosd(pitch)*cosd(roll))];

dmv = [0 1.7 0]';

vAm = [vRm dmv; 0 0 0 1] % a) solution

mRw = [cosd(-80) sind(-80) 0; -sind(-80) cosd(-80) 0; 0 0 1];
mw = mRw * -wp;
mAw = [mRw mw; 0 0 0 1] % b) solution

%% Exercise 6

p1 = [0.91 1.94 3.33];
p2 = [3.72 2.88 4.44];
p3 = [1.97 1.0 3.26];
p4 = [2.67 3.82 4.51];

R = [p1' p2' p3' p4']

f = 1/30;


%% Example Angle/Axis exercise

R = eye(3);
Ux = [0 -1 0; 1 0 0; 0 0 0]

Rotation = eye(3) + sind(90)*Ux + (1-cosd(90))*Ux^2;

R_Rotated = R*Rotation

%% Inverse Maping Rotation Matrix to Angle/Axis

R = [0 -1 0; 1 0 0; 0 0 1];

angle = acosd((trace(R)-1)/2)
Ux = (R-R')/2*sind(angle);

axis = [Ux(3,2) Ux(1,3) Ux(2,1)]

%% LOL Exercise

kRw = [cosd(-90) sind(-90); -sind(-90) cosd(-90)] %World seen from Kalista
wRk = kRw'   %Kalista seen from world

sRw = [cosd(30) sind(30); -sind(30) cosd(30)]   %Sentinel seen from world
wRs = sRw'  %World Seen from Sentinel

sRk = [cosd(120) sind(120); -sind(120) cosd(120)] %Sentinel seen from Kalista
kRs = sRk' %Kalista seen from Sentinel

sP0 = [-120 -40]'
Wddk = [130 0]'

kP0 = -kRs * sP0
wP0 = wRk * kP0

Wddk + wP0;

wddPk = [130 0];  %Kalista seen from world
sP3e = [1 3];
sPk = [-120 -40];
wP4a = [150 150];


