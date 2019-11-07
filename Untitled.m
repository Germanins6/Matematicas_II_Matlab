R = [0.9254 0.1632 -0.3420; 0.0180 0.8826 0.4698; 0.3785 -0.4410 0.8138]'

Rtotal = R * R'  %%OK

%%Restar theta por 180 y calcular YAW y ROLL con este nuevo angulo
theta = 180-asind(-R(3,1)) %%OK

angleroll = atan2d(R(3,2)/cosd(theta), R(3,3)/cosd(theta))

angleyaw = atan2d(R(2,1)/cosd(theta),R(1,1)/cosd(theta))

