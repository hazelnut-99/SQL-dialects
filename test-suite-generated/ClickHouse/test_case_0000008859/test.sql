SELECT toInt32(toDecimal64(number, 2)), toInt64(toDecimal64(number, 2)), toInt128(toDecimal64(number, 2)) FROM numbers(10, 1);
