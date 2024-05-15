SELECT isDecimalOverflow(toDecimal128('99999999999999999999999999999999999999', 0), 37),
       isDecimalOverflow(toDecimal128('10', 0), 1),
       isDecimalOverflow(toDecimal128('1', 0), 0),
       isDecimalOverflow(toDecimal128('-99999999999999999999999999999999999999', 0), 37),
       isDecimalOverflow(toDecimal128('-10', 0), 1),
       isDecimalOverflow(toDecimal128('-1', 0), 0);
