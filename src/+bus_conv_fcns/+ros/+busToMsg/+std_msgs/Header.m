function rosmsgOut = Header(slBusIn, rosmsgOut)
%#codegen
%   Copyright 2021 The MathWorks, Inc.
    rosmsgOut.Seq = uint32(slBusIn.Seq);
    rosmsgOut.Stamp = bus_conv_fcns.ros.busToMsg.ros.Time(slBusIn.Stamp,rosmsgOut.Stamp(1));
    rosmsgOut.FrameId = char(slBusIn.FrameId);
    if slBusIn.FrameId_SL_Info.CurrentLength < numel(slBusIn.FrameId)
    rosmsgOut.FrameId(slBusIn.FrameId_SL_Info.CurrentLength+1:numel(slBusIn.FrameId)) = [];
    end
end
