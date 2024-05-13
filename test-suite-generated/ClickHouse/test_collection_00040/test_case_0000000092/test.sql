select IPv4StringToNum('127.0.0.1' as p) == (0x7f000001 as n), IPv4NumToString(n) == p;
