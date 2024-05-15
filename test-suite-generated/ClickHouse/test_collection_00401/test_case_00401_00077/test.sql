SELECT toDecimal64(-123456789.123456789, 9) AS x, countEqual([x+1, x, x], x), countEqual([x, x-1, x], x), countEqual([x, x], x+0);
