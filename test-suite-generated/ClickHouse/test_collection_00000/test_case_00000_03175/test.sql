SELECT toDecimal128('42.42', 4) AS x, toDecimal32(cbrt(x), 4) AS y, toDecimal64(y, 4) * y * y;
