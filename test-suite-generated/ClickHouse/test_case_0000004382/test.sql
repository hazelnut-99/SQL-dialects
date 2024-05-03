SELECT isDecimalOverflow(toNullable(toDecimal32(42, 0)), 1),
       isDecimalOverflow(materialize(toNullable(toDecimal32(42, 0))), 2),
       isDecimalOverflow(toNullable(toDecimal64(42, 0)), 1),
       isDecimalOverflow(materialize(toNullable(toDecimal64(42, 0))), 2),
       isDecimalOverflow(toNullable(toDecimal128(42, 0)), 1),
       isDecimalOverflow(materialize(toNullable(toDecimal128(42, 0))), 2);
