SELECT cutIPv6(toFixedString(unhex(addr), 16), 0, 3) FROM addresses ORDER BY addr ASC;
