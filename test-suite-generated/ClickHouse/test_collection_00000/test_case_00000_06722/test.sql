SELECT toInt32(toDecimal128(number, 3)), toInt64(toDecimal128(number, 3)), toInt128(toDecimal128(number, 3)) FROM numbers(11, 1);
