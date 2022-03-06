function rosmsgOut = Pose(slBusIn, rosmsgOut)
%#codegen
%   Copyright 2021 The MathWorks, Inc.
    rosmsgOut.Position = bus_conv_fcns.ros.busToMsg.geometry_msgs.Point(slBusIn.Position,rosmsgOut.Position(1));
    rosmsgOut.Orientation = bus_conv_fcns.ros.busToMsg.geometry_msgs.Quaternion(slBusIn.Orientation,rosmsgOut.Orientation(1));
end
