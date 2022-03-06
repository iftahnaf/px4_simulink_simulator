function rosmsgOut = Twist(slBusIn, rosmsgOut)
%#codegen
%   Copyright 2021 The MathWorks, Inc.
    rosmsgOut.Linear = bus_conv_fcns.ros.busToMsg.geometry_msgs.Vector3(slBusIn.Linear,rosmsgOut.Linear(1));
    rosmsgOut.Angular = bus_conv_fcns.ros.busToMsg.geometry_msgs.Vector3(slBusIn.Angular,rosmsgOut.Angular(1));
end
