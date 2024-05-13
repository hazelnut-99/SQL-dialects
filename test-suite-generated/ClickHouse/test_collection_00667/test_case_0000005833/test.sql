SELECT toDecimal32(0, 4) AS x, multiIf(x = 0, NULL, intDivOrZero(1, x)), multiIf(x = 0, NULL, intDivOrZero(x, 0));
