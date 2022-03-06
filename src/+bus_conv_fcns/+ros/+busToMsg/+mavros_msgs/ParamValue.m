function rosmsgOut = ParamValue(slBusIn, rosmsgOut)
%#codegen
%   Copyright 2021 The MathWorks, Inc.
    rosmsgOut.Integer = int64(slBusIn.Integer);
    rosmsgOut.Real = double(slBusIn.Real);
end
