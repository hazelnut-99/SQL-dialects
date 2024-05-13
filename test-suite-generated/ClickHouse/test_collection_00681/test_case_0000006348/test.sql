SELECT toDecimal128('12345678901234567890123456789.123456789', 9) AS x, -x AS y, floor(x), floor(y), floor(x, 3), floor(y, 3);
