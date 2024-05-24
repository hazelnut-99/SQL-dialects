SELECT toDecimal128('42.42', 4) AS x, toDecimal32(sqrt(x), 3) AS y, y * y;
