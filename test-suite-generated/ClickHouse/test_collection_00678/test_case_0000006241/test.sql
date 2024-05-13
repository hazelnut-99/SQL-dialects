SELECT toDecimal128('42.42', 4) AS x, round(lgamma(x), 6), round(tgamma(x) / 1e50, 6);
