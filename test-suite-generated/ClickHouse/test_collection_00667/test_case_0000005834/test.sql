SELECT toDecimal64(0, 8) AS x, multiIf(x = 0, NULL, intDivOrZero(1, x)), multiIf(x = 0, NULL, intDivOrZero(x, 0));
