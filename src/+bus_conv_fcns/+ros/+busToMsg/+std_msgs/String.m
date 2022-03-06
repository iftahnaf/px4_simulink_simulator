function rosmsgOut = String(slBusIn, rosmsgOut)
%#codegen
%   Copyright 2021 The MathWorks, Inc.
    rosmsgOut.Data = char(slBusIn.Data);
    if slBusIn.Data_SL_Info.CurrentLength < numel(slBusIn.Data)
    rosmsgOut.Data(slBusIn.Data_SL_Info.CurrentLength+1:numel(slBusIn.Data)) = [];
    end
end
