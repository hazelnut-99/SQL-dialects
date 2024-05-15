SELECT toInt64(999999999) as x, toDecimal64(x, 9), toDecimal64(-x, 9), toDecimal128(x, 29), toDecimal128(-x, 29);
