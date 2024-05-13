select IPv4NumToString(materialize(toUInt32(0x7f000001))) == materialize('127.0.0.1');
