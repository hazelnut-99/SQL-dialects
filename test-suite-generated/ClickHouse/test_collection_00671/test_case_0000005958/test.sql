SELECT toDecimal32('12345678', 1) AS x, toDecimal32(x, 2), toDecimal32(toDecimal32('12345678', 1), 2);
