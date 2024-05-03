SELECT toInt256(number) y, toDecimal32(y, 1), toDecimal64(y, 5), toDecimal128(y, 6), toDecimal256(y, 7) FROM numbers(5, 1);
