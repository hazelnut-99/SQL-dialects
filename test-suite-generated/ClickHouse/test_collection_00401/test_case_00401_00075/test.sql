SELECT toDecimal32(-12345.6789, 4) AS x, countEqual([x+1, x, x], x), countEqual([x, x-1, x], x), countEqual([x, x], x+0);
