SELECT toDecimal32('42.42', 4) AS x, toDecimal32(log(x), 4) AS y, round(exp(y), 6);
