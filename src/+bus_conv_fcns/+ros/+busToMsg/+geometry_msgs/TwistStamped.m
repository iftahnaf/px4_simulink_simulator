function rosmsgOut = TwistStamped(slBusIn, rosmsgOut)
%#codegen
%   Copyright 2021 The MathWorks, Inc.
    rosmsgOut.Header = bus_conv_fcns.ros.busToMsg.std_msgs.Header(slBusIn.Header,rosmsgOut.Header(1));
    rosmsgOut.Twist = bus_conv_fcns.ros.busToMsg.geometry_msgs.Twist(slBusIn.Twist,rosmsgOut.Twist(1));
end
