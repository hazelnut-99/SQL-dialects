SELECT isDecimalOverflow(materialize(toDecimal32(1000000000, 0)), 9),
       isDecimalOverflow(materialize(toDecimal32(1000000000, 0))),
       isDecimalOverflow(materialize(toDecimal32(-1000000000, 0)), 9),
       isDecimalOverflow(materialize(toDecimal32(-1000000000, 0)));
