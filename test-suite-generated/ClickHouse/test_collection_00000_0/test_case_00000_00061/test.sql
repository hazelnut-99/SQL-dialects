select IPv4NumToString(materialize(toUInt32(0))) == materialize('0.0.0.0');
