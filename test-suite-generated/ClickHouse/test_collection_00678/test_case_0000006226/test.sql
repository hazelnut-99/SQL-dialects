SELECT toDecimal64('42.42', 4) AS x, toDecimal32(log2(x), 4) AS y, round(exp2(y), 6);
