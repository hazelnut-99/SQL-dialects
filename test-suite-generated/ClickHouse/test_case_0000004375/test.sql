SELECT isDecimalOverflow(materialize(toDecimal64(999999999999999999, 0)), 17),
       isDecimalOverflow(materialize(toDecimal64(10, 0)), 1),
       isDecimalOverflow(materialize(toDecimal64(1, 0)), 0),
       isDecimalOverflow(materialize(toDecimal64(-999999999999999999, 0)), 17),
       isDecimalOverflow(materialize(toDecimal64(-10, 0)), 1),
       isDecimalOverflow(materialize(toDecimal64(-1, 0)), 0);
