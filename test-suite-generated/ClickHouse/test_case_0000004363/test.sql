SELECT isDecimalOverflow(toDecimal32(0, 0), 0),
       isDecimalOverflow(toDecimal64(0, 0), 0),
       isDecimalOverflow(toDecimal128(0, 0), 0);
