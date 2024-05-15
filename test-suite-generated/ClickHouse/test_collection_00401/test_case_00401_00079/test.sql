SELECT toDecimal128(-0.1234567891123456789, 18) AS x, countEqual([x+1, x, x], x), countEqual([x, x-1, x], x), countEqual([x, x], x+0);
