SELECT isDecimalOverflow(toDecimal64(1000000000000000000, 0), 18),
       isDecimalOverflow(toDecimal64(1000000000000000000, 0)),
       isDecimalOverflow(toDecimal64(-1000000000000000000, 0), 18),
       isDecimalOverflow(toDecimal64(-1000000000000000000, 0));
