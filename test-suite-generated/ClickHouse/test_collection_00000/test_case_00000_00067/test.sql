select IPv6NumToString(IPv6StringToNum(materialize('::ffff:127.0.0.1') as p) as n) == p;
