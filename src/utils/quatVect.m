function rotMat = quatVect(acc,des_yaw) %#codegen
%this function calculates the quaternion based on acceleration command and
%desired yaw angle. based on
%https://github.com/Jaeyoung-Lim/mavros_controllers/blob/master/geometric_controller/src/geometric_controller.cpp,
% because of code generation limitations, the output is the rotation
% matrix, then it needs to be converter to quaternions with rot2quat block.
%Iftach Naftaly, 12.2020

proj_xb_des = [cosd(des_yaw);sind(des_yaw);0];

zb_des = acc/norm(acc);
yb_des = cross(zb_des,proj_xb_des)/norm(cross(zb_des,proj_xb_des));
xb_des = cross(yb_des,zb_des)/norm(cross(yb_des,zb_des));


rotMat = [xb_des;yb_des;zb_des];



end