
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