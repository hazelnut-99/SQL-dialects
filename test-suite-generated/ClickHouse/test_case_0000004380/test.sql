SELECT isDecimalOverflow(materialize(toDecimal128('99999999999999999999999999999999999999', 0)), 38),
       isDecimalOverflow(materialize(toDecimal128('99999999999999999999999999999999999999', 0))),
       isDecimalOverflow(materialize(toDecimal128('-99999999999999999999999999999999999999', 0)), 38),
       isDecimalOverflow(materialize(toDecimal128('-99999999999999999999999999999999999999', 0)));
