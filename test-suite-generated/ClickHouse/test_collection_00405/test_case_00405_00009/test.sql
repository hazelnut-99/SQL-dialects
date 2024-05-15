SELECT coalesce(toNullable(toDecimal32(7, 0)), NULL), coalesce(toNullable(toDecimal64(7, 0)), NULL), coalesce(toNullable(toDecimal128(7, 0)), NULL);
