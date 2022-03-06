function rosmsgOut = PoseStamped(slBusIn, rosmsgOut)
%#codegen
%   Copyright 2021 The MathWorks, Inc.
    rosmsgOut.Header = bus_conv_fcns.ros.busToMsg.std_msgs.Header(slBusIn.Header,rosmsgOut.Header(1));
    rosmsgOut.Pose = bus_conv_fcns.ros.busToMsg.geometry_msgs.Pose(slBusIn.Pose,rosmsgOut.Pose(1));
end
