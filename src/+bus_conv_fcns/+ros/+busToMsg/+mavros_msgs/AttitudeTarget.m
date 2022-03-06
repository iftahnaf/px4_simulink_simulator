function rosmsgOut = AttitudeTarget(slBusIn, rosmsgOut)
%#codegen
%   Copyright 2021 The MathWorks, Inc.
    rosmsgOut.Header = bus_conv_fcns.ros.busToMsg.std_msgs.Header(slBusIn.Header,rosmsgOut.Header(1));
    rosmsgOut.TypeMask = uint8(slBusIn.TypeMask);
    rosmsgOut.Orientation = bus_conv_fcns.ros.busToMsg.geometry_msgs.Quaternion(slBusIn.Orientation,rosmsgOut.Orientation(1));
    rosmsgOut.BodyRate = bus_conv_fcns.ros.busToMsg.geometry_msgs.Vector3(slBusIn.BodyRate,rosmsgOut.BodyRate(1));
    rosmsgOut.Thrust = single(slBusIn.Thrust);
end
