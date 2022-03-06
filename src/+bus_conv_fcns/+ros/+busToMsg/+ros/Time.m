function rosmsgOut = Time(slBusIn, rosmsgOut)
%#codegen
%   Copyright 2021 The MathWorks, Inc.
    rosmsgOut.Sec = uint32(slBusIn.Sec);
    rosmsgOut.Nsec = uint32(slBusIn.Nsec);
end
