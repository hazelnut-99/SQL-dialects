SELECT isDecimalOverflow(materialize(toDecimal64(999999999999999999, 0)), 18),
       isDecimalOverflow(materialize(toDecimal64(999999999999999999, 0))),
       isDecimalOverflow(materialize(toDecimal64(-999999999999999999, 0)), 18),
       isDecimalOverflow(materialize(toDecimal64(-999999999999999999, 0)));
