SELECT toDecimal64('123456789.123456789', 9) AS x, -x AS y, round(x), round(y), round(x, 5), round(y, 5), round(x, -5), round(y, -5);
