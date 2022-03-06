function rosmsgOut = Quaternion(slBusIn, rosmsgOut)
%#codegen
%   Copyright 2021 The MathWorks, Inc.
    rosmsgOut.X = double(slBusIn.X);
    rosmsgOut.Y = double(slBusIn.Y);
    rosmsgOut.Z = double(slBusIn.Z);
    rosmsgOut.W = double(slBusIn.W);
end
