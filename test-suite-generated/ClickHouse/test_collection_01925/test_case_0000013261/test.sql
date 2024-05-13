SELECT toUInt256(number * number) * -1 y, toDecimal32(y, 1), toDecimal64(y, 2), toDecimal128(y, 6), toDecimal256(y, 7) FROM numbers_mt(10) ORDER BY number;
