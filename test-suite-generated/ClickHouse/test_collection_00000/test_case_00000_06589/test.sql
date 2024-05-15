SELECT number y, toInt128(number) - y, toInt256(number) - y, toUInt256(number) - y FROM numbers_mt(10) ORDER BY number;
