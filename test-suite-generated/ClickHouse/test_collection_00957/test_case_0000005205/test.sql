SELECT nullIf(toNullable(toDecimal32(1, 0)), toDecimal32(2, 0)), nullIf(toNullable(toDecimal64(1, 0)), toDecimal64(2, 0));
