%Camera script
wOf2 = [1 4 7]';


yaw = 45;
pitch= 0;
roll = -45;
%%need to create matrix with euler angles
R11 = [cosd(yaw)] ;


R11 = R11'*R12'*R13';

R2ux = [0 -1 0; 1 0 0; 0 0 0];
R2a = -(pi/20) * 180/pi;
R2 = eye(3) + ( sind(R2a)*R2ux) + (1-cosd(R2a));

R3ux = [0 0 1; 0 0 0; -1 0 0];
R3a = 0.3*180/pi;
R3 = eye(3) + (sind(R3a)*R2ux) + (1 -cosd(R3a));

cRw = R3' * (R2' * (R1'));

