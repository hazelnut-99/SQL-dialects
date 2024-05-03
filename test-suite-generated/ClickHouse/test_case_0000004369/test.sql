SELECT isDecimalOverflow(materialize(toDecimal32(999999999, 0)), 8),
       isDecimalOverflow(materialize(toDecimal32(10, 0)), 1),
       isDecimalOverflow(materialize(toDecimal32(1, 0)), 0),
       isDecimalOverflow(materialize(toDecimal32(-999999999, 0)), 8),
       isDecimalOverflow(materialize(toDecimal32(-10, 0)), 1),
       isDecimalOverflow(materialize(toDecimal32(-1, 0)), 0);
