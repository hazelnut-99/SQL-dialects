SELECT nullIf(toDecimal32(1, 0), toNullable(toDecimal32(1, 0))), nullIf(toDecimal64(1, 0), toNullable(toDecimal64(1, 0)));
