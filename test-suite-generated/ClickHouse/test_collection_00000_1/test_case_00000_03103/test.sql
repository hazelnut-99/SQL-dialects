SELECT toDecimal64('1234567890', 8) AS x, toDecimal64(x, 9), toDecimal64(toDecimal64('1234567890', 8), 9);
