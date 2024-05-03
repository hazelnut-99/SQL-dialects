SELECT toDecimal128('12345678901234567890123456789.123456789', 9) AS x, -x AS y, ceil(x), ceil(y), ceil(x, 3), ceil(y, 3);
