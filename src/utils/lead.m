function Clead = lead(Phase,Freq,Damping)
%LEAD returns a QCTRL lead compensator
%
% Usage:
%
% clead = QCTRL.LEAD(Phase,W)  returns a 1st oreder lead compensator
% with a given phase-lead at frequeny W.
%
% clead = QCTRL.LEAD(Phase,W,damping) returns a 2nd order lead compensator
% with a given phase-lead at frequeny W and specified damping

if nargin == 2
    Damping = -1;
end

if nargin ~= 2 && nargin ~=3
    error('Wrong number of input arguments')
end

wm = Freq;
Pm = Phase*pi/180;
if Damping == -1 % order=1
    p = -wm*sqrt((1+sin(Pm))/(1-sin(Pm)));
    z = -wm/sqrt((1+sin(Pm))/(1-sin(Pm)));
    Clead = zpk(z,p,1);
else
    zeta=Damping;
    if zeta>=1 || zeta<=0
        error('damping ratio must be between 0 and 1')
    end
    wz = wm*(-zeta*tan(Pm)+sqrt(zeta^2)*tan(Pm)^2+1);
    wp = wm*(zeta*tan(Pm)+sqrt(zeta^2)*tan(Pm)^2+1);
    z = [-zeta*wz+1j*wz*sqrt(1-zeta^2) -zeta*wz-1j*wz*sqrt(1-zeta^2)];
    p = [-zeta*wp+1j*wp*sqrt(1-zeta^2) -zeta*wp-1j*wp*sqrt(1-zeta^2)];
    Clead = zpk(z,p,1);
end
end
