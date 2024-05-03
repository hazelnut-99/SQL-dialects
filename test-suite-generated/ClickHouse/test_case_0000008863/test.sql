SELECT toInt256(toDecimal32(number, 1)), toInt256(toDecimal64(number, 2)), toInt256(toDecimal128(number, 3)) FROM numbers(14, 1);
