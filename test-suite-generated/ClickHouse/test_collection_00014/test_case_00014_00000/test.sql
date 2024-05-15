SELECT cutIPv6(toFixedString(unhex(addr), 16), 3, 0) FROM addresses ORDER BY addr ASC;
