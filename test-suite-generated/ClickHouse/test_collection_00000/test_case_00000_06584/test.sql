SELECT toInt64(number * -1) * number   y, toInt128(y), toInt256(y), toUInt256(y) FROM numbers_mt(10) ORDER BY number;
