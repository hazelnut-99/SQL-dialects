SELECT isDecimalOverflow(toDecimal32(999999999, 0), 8),
       isDecimalOverflow(toDecimal32(10, 0), 1),
       isDecimalOverflow(toDecimal32(1, 0), 0),
       isDecimalOverflow(toDecimal32(-999999999, 0), 8),
       isDecimalOverflow(toDecimal32(-10, 0), 1),
       isDecimalOverflow(toDecimal32(-1, 0), 0);
