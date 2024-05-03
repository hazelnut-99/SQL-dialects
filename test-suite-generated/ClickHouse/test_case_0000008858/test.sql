SELECT toInt32(toDecimal32(number, 1)), toInt64(toDecimal32(number, 1)), toInt128(toDecimal32(number, 1)) FROM numbers(9, 1);
