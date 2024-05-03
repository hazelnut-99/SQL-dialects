SELECT isDecimalOverflow(materialize(toDecimal32(999999999, 0)), 9),
       isDecimalOverflow(materialize(toDecimal32(999999999, 0))),
       isDecimalOverflow(materialize(toDecimal32(-999999999, 0)), 9),
       isDecimalOverflow(materialize(toDecimal32(-999999999, 0)));
