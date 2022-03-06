function rosmsgOut = Vector3(slBusIn, rosmsgOut)
%#codegen
%   Copyright 2021 The MathWorks, Inc.
    rosmsgOut.X = double(slBusIn.X);
    rosmsgOut.Y = double(slBusIn.Y);
    rosmsgOut.Z = double(slBusIn.Z);
end
