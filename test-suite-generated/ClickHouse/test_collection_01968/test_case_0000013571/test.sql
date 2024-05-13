SELECT isDecimalOverflow(toDecimal64(999999999999999999, 0), 17),
       isDecimalOverflow(toDecimal64(10, 0), 1),
       isDecimalOverflow(toDecimal64(1, 0), 0),
       isDecimalOverflow(toDecimal64(-999999999999999999, 0), 17),
       isDecimalOverflow(toDecimal64(-10, 0), 1),
       isDecimalOverflow(toDecimal64(-1, 0), 0);
