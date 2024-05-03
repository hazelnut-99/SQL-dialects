SELECT toDecimal64('123456789.123456789', 9) AS x, -x AS y, ceil(x), ceil(y), ceil(x, 5), ceil(y, 5), ceil(x, -5), ceil(y, -5);
