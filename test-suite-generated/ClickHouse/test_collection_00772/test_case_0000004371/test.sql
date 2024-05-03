SELECT isDecimalOverflow(toDecimal64(999999999999999999, 0), 18),
       isDecimalOverflow(toDecimal64(999999999999999999, 0)),
       isDecimalOverflow(toDecimal64(-999999999999999999, 0), 18),
       isDecimalOverflow(toDecimal64(-999999999999999999, 0));
