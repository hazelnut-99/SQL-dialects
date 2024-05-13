SELECT toInt8(0) AS x, toDecimal128(1, 0) AS y, ((x > y) ? x : y) AS z, toTypeName(x), toTypeName(y), toTypeName(z);
